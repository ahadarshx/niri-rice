// Cursor trail: a thin, tapered streak follows the cursor and fades out.
// Colour = the terminal's cursor colour, which DMS sets from the wallpaper.

const float DURATION = 0.22;   // seconds until the trail is gone
const float OPACITY  = 0.75;
const float WIDTH    = 0.30;   // trail thickness at the cursor, as a share of line height
const float MIN_JUMP = 2.0;    // ignore moves shorter than this many line heights (typing)

float easeOutCubic(float x) { return 1.0 - pow(1.0 - x, 3.0); }

void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec4 base = texture(iChannel0, fragCoord / iResolution.xy);
    fragColor = base;

    float t = clamp((iTime - iTimeCursorChange) / DURATION, 0.0, 1.0);
    if (t >= 1.0) return;

    // cursor boxes in pixels: xy = top-left (y grows upward), zw = size
    vec4 cur = iCurrentCursor, prev = iPreviousCursor;
    vec2 head = cur.xy + vec2(cur.z, -cur.w) * 0.5;
    vec2 start = prev.xy + vec2(prev.z, -prev.w) * 0.5;
    vec2 tail = mix(start, head, easeOutCubic(t));     // the tail catches up to the cursor

    // typing moves the cursor one cell at a time: no trail for short hops
    if (distance(start, head) < cur.w * MIN_JUMP) return;

    vec2 seg = head - tail;
    float len2 = dot(seg, seg);
    if (len2 < 1.0) return;

    float raw = dot(fragCoord - tail, seg) / len2;                  // 0 tail .. 1 head
    if (raw > 1.0) return;                                          // no rounded tip past the cursor
    float u = clamp(raw, 0.0, 1.0);
    float d = distance(fragCoord, tail + seg * u);

    float halfW = max(cur.w * WIDTH * 0.5, 1.0) * u;                // tapers to a point
    float a = (1.0 - smoothstep(halfW - 0.5, halfW + 1.0, d)) * u * (1.0 - t) * OPACITY;

    fragColor = mix(base, vec4(iCurrentCursorColor.rgb, 1.0), a);

    // the real cursor and text stay on top
    vec2 q = abs(fragCoord - head) - vec2(cur.z, cur.w) * 0.5;
    if (max(q.x, q.y) <= 0.0) fragColor = base;
}
