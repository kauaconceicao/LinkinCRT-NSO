#version 450

// LinkinCRT NSO - porte do shader de pos-processamento do Dolphin (GLSL) para RetroArch .slang
#pragma name LinkinCRT_NSO

#pragma parameter A_GAMEFRAME "[GAME FRAME] Main Modifiers" 1.0 0.0 1.0 1.0
#pragma parameter A_00_FORCE_43 "00. Force 4:3 Game Frame (for 16:9 Dolphin output)" 1.0 0.0 1.0 1.0
#pragma parameter A_01_RES "01. Perceived Resolution (Lo-Fi)" 440.0 120.0 1080.0 20.0
#pragma parameter A_02_SHARP "02. Downscale Sharpness" 0.0 0.0 1.0 0.05
#pragma parameter A_03_CONTRAST "03. Color Contrast" 1.15 0.5 2.0 0.05
#pragma parameter A_04_SAT "04. Color Saturation" 1.15 0.0 2.0 0.05
#pragma parameter A_05_PURITY "05. Phosphor Purity (P22 Colors)" 0.9 0.0 1.0 0.05
#pragma parameter A_06_BULGE "06. Tube Bulge (Curvature)" 0.05 0.0 0.5 0.01
#pragma parameter A_07_MASK_TYPE "07. Tube Pattern (0:Pana, 1:Sony, 2:VGA, 3:ShadowMask, 4:SlotMask)" 0.0 0.0 4.0 1.0
#pragma parameter A_08_MASK_SCALE "08. Base Mask Size" 0.6 0.5 8.0 0.1
#pragma parameter A_09_PATTERN_STR "09. Global CRT Pattern Strength" 0.15 0.0 1.0 0.05
#pragma parameter A_10_STAGGER "10. Stagger Intensity (Slot Offset)" 2.0 0.0 2.0 0.1
#pragma parameter A_11_SCAN_D "11. Scanline Darkness" 0.45 0.0 1.0 0.05
#pragma parameter A_12_SCAN_AMT "12. Scanline Amount (Density)" 0.55 0.25 1.0 0.05
#pragma parameter A_13_T_INTERLACE "13. Simulate Interlaced Jitter (480i)" 1.0 0.0 1.0 1.0
#pragma parameter A_14_JITTER "14. Interlace Jitter Strength" 0.1 0.0 1.0 0.05
#pragma parameter A_16_GHOST "16. Signal Ghosting (Ringing)" 0.85 0.0 1.0 0.05
#pragma parameter A_17_CHROMA "17. Chromatic Aberration" 1.0 0.0 10.0 0.1
#pragma parameter A_18_NOISE "18. Signal Noise & Static (RF Grain)" 0.0 0.0 0.5 0.01
#pragma parameter A_19_HUM "19. 60Hz Hum Bar (Interference)" 0.0 0.0 0.5 0.01
#pragma parameter A_20_SHIVER "20. Moire Morph Intensity" 0.7 0.0 1.0 0.05
#pragma parameter A_21_SMOOTH "21. Morph Smoothness (Temporal Lag)" 0.5 0.0 1.0 0.05
#pragma parameter A_22_BLOCK "22. Moire Blocking Size(Grid)(1:Global)" 1.0 1.0 32.0 1.0
#pragma parameter A_23_T_SMOOTH "23. Temporal Smoothing (0-4 frames)" 0.0 0.0 4.0 1.0
#pragma parameter A_24_GLOW "24. Ambient Glow (Adaptive)" 0.2 0.0 1.0 0.05
#pragma parameter A_25_BLACK "25. Black Level Lift" 0.02 -0.1 0.2 0.01
#pragma parameter A_26_INTENS "26. Brightness Master" 1.2 0.5 3.0 0.05
#pragma parameter A_27_GAMMA "27. Display Gamma Correction" 2.2 1.8 2.6 0.05
#pragma parameter A_28_CROP "28. Overscan Crop" 0.0 0.0 0.1 0.005
#pragma parameter A_29_SOFT_BLUR "29. Soft Blur (Post-Phosphor)" 0.05 0.0 2.0 0.01
#pragma parameter A_30_TEMP "30. Colour Temperature (0:Warm 6500K, 1:Neutral, 2:Cool 9300K)" 1.0 0.0 2.0 0.1
#pragma parameter A_31_DECAY "31. Phosphor Decay (Green/Blue Persistence)" 0.2 0.0 1.0 0.05
#pragma parameter B_BEZEL "[TV BEZEL] Enable Bezel" 1.0 0.0 1.0 1.0
#pragma parameter B_THEME_TOGGLE "00. Enable Bezel Speaker Grille Theme" 0.0 0.0 1.0 1.0
#pragma parameter B_01_CORNER_R "01. Corner Roundness" 0.0 0.0 0.05 0.01
#pragma parameter B_02_BORDER "02. Bezel Border Size" 0.01 0.0 0.2 0.01
#pragma parameter B_03_BEZEL_GRAIN "03. Bezel Grain" 0.08 0.0 0.3 0.01
#pragma parameter B_04_BEZEL_COL "04. Bezel Color (0:Grey, 1:Red, 2:Tan, 3:LGrey, 4:Black)" 2.0 0.0 4.0 1.0
#pragma parameter B_05_BEZEL_SHADOW "05. Bezel Shadow onto Screen" 0.15 0.0 1.0 0.05
#pragma parameter B_06_BEZEL_REFLECT_BLUR "06. Bezel Reflection Blur (0:Sharp, 1:Med, 2:High)" 1.0 0.0 2.0 1.0
#pragma parameter B_07_FRAME "07. Inner Black Frame Size" 0.01 0.0 0.05 0.005
#pragma parameter N_NSO "[NSO THEME] Switch Online Style Side Bars (replaces speaker grille)" 1.0 0.0 1.0 1.0
#pragma parameter N_01_DOT_SIZE "01. Dot Size" 12.0 3.0 40.0 0.5
#pragma parameter N_02_BRIGHT "02. Background Brightness" 1.0 0.0 3.0 0.05
#pragma parameter N_03_GAP "03. Black Edge Gap (dots vanish near the game)" 0.15 0.0 0.6 0.01
#pragma parameter N_04_REFLECT "04. Frame Reflection (game light on the frame)" 1.25 0.0 6.0 0.05
#pragma parameter N_05_REFL_CUT "05. Reflection Dark Cutoff (lower = less black in reflections)" 0.5 0.05 1.0 0.05
#pragma parameter N_06_REFL_LIFT "06. Reflection Dark Lift (higher = brighter dark areas)" 2.0 1.0 4.0 0.1
#pragma parameter M_MISC "[ENHANCED FX] Enable Additional Effects" 1.0 0.0 1.0 1.0
#pragma parameter M_01_SYNC "01. H-Sync Glitch (Tracking Error)" 0.0 0.0 1.0 0.1
#pragma parameter M_02_RAINBOW "02. Rainbow Banding (Dot Crawl)" 0.0 0.0 1.0 0.1
#pragma parameter M_03_GEOM "03. Geometry Pincushion" 0.0 0.0 1.0 0.1
#pragma parameter M_04_BREATH "04. Breathing Effect (Tube Swell)" 0.0 0.0 1.0 0.1
#pragma parameter M_05_SCATTER "05. Blue Scatter (Lens Flare)" 0.0 0.0 1.0 0.1
#pragma parameter M_06_AFTERGLOW "06. Phosphorus Afterglow (Persistence)" 0.3 0.0 1.0 0.1
#pragma parameter M_07_MAG_TINT "07. Magnetic Purity Failure (Tint)" 0.0 0.0 1.0 0.1
#pragma parameter M_08_CONVERGE "08. Corner Convergence Error" 1.0 0.0 2.0 0.1
#pragma parameter M_09_BEAM_BLOOM "09. Dynamic Beam Bloom" 0.3 0.0 1.0 0.1
#pragma parameter M_10_VIGNETTE "10. Peripheral Vignette" 0.0 0.0 1.0 0.1
#pragma parameter M_11_FLICKER "11. Phosphor Flicker (60Hz)" 0.2 0.0 1.0 0.1
#pragma parameter M_12_VHOLD "12. Vertical Hold Instability" 0.0 0.0 1.0 0.05
#pragma parameter M_13_VHOLD_SPEED "13. V-Hold Roll Speed" 0.5 0.1 4.0 0.1
#pragma parameter M_14_EDGE_RING "14. Edge Ringing (NTSC Luma Overshoot)" 0.0 0.0 0.05 0.05
#pragma parameter M_15_BFI "15. Black Frame Insertion (CRT Strobe)" 0.0 0.0 1.0 0.05
#pragma parameter T_TUBEGLASS "[TUBE GLASS] Enable Glass Effects" 1.0 0.0 1.0 1.0
#pragma parameter T_01_REFRACT "01. Glass Refraction (Distortion)" 0.1 0.0 1.0 0.05
#pragma parameter T_02_SHINE "02. Reflection Brightness" 0.0 0.0 2.0 0.05
#pragma parameter T_03_R_TYPE "03. Reflection Style (0:Diff, 1:Spot, 2:Bar)" 0.0 0.0 2.0 1.0
#pragma parameter T_04_WEAR "04. Glass Scratches & Wear" 0.3 0.0 1.0 0.1
#pragma parameter T_05_POS_X "05. Reflection Position X" 0.0 -0.5 0.5 0.01
#pragma parameter T_06_POS_Y "06. Reflection Position Y" 0.0 -0.5 0.5 0.01
#pragma parameter T_07_TINT "07. Inner Glass Tint (0:None, 1:Grey, 2:Green, 3:Blue)" 1.0 0.0 3.0 1.0
#pragma parameter T_08_TINT_STR "08. Glass Tint Strength" 1.0 0.0 1.0 0.05
#pragma parameter T_09_DUST "09. Screen Dust & Smudge" 0.45 0.0 1.0 0.05
#pragma parameter DIFF_TAB "[DIFFERENCE CHECK] Split Screen Compare" 1.0 0.0 1.0 1.0
#pragma parameter D_01_SPLIT "01. Split Position (0: Off, >0: Split Bar X Position)" 0.0 0.0 1.0 0.01

layout(std140, set = 0, binding = 0) uniform UBO
{
    mat4 MVP;
    vec4 OutputSize;
    vec4 OriginalSize;
    vec4 SourceSize;
    uint FrameCount;
    float A_GAMEFRAME;
    float A_00_FORCE_43;
    float A_01_RES;
    float A_02_SHARP;
    float A_03_CONTRAST;
    float A_04_SAT;
    float A_05_PURITY;
    float A_06_BULGE;
    float A_07_MASK_TYPE;
    float A_08_MASK_SCALE;
    float A_09_PATTERN_STR;
    float A_10_STAGGER;
    float A_11_SCAN_D;
    float A_12_SCAN_AMT;
    float A_13_T_INTERLACE;
    float A_14_JITTER;
    float A_16_GHOST;
    float A_17_CHROMA;
    float A_18_NOISE;
    float A_19_HUM;
    float A_20_SHIVER;
    float A_21_SMOOTH;
    float A_22_BLOCK;
    float A_23_T_SMOOTH;
    float A_24_GLOW;
    float A_25_BLACK;
    float A_26_INTENS;
    float A_27_GAMMA;
    float A_28_CROP;
    float A_29_SOFT_BLUR;
    float A_30_TEMP;
    float A_31_DECAY;
    float B_BEZEL;
    float B_THEME_TOGGLE;
    float B_01_CORNER_R;
    float B_02_BORDER;
    float B_03_BEZEL_GRAIN;
    float B_04_BEZEL_COL;
    float B_05_BEZEL_SHADOW;
    float B_06_BEZEL_REFLECT_BLUR;
    float B_07_FRAME;
    float N_NSO;
    float N_01_DOT_SIZE;
    float N_02_BRIGHT;
    float N_03_GAP;
    float N_04_REFLECT;
    float N_05_REFL_CUT;
    float N_06_REFL_LIFT;
    float M_MISC;
    float M_01_SYNC;
    float M_02_RAINBOW;
    float M_03_GEOM;
    float M_04_BREATH;
    float M_05_SCATTER;
    float M_06_AFTERGLOW;
    float M_07_MAG_TINT;
    float M_08_CONVERGE;
    float M_09_BEAM_BLOOM;
    float M_10_VIGNETTE;
    float M_11_FLICKER;
    float M_12_VHOLD;
    float M_13_VHOLD_SPEED;
    float M_14_EDGE_RING;
    float M_15_BFI;
    float T_TUBEGLASS;
    float T_01_REFRACT;
    float T_02_SHINE;
    float T_03_R_TYPE;
    float T_04_WEAR;
    float T_05_POS_X;
    float T_06_POS_Y;
    float T_07_TINT;
    float T_08_TINT_STR;
    float T_09_DUST;
    float DIFF_TAB;
    float D_01_SPLIT;
} global;

// Os nomes dos parametros continuam iguais aos do original,
// entao o corpo do shader nao precisa de "global." em tudo.
#define A_GAMEFRAME global.A_GAMEFRAME
#define A_00_FORCE_43 global.A_00_FORCE_43
#define A_01_RES global.A_01_RES
#define A_02_SHARP global.A_02_SHARP
#define A_03_CONTRAST global.A_03_CONTRAST
#define A_04_SAT global.A_04_SAT
#define A_05_PURITY global.A_05_PURITY
#define A_06_BULGE global.A_06_BULGE
#define A_07_MASK_TYPE global.A_07_MASK_TYPE
#define A_08_MASK_SCALE global.A_08_MASK_SCALE
#define A_09_PATTERN_STR global.A_09_PATTERN_STR
#define A_10_STAGGER global.A_10_STAGGER
#define A_11_SCAN_D global.A_11_SCAN_D
#define A_12_SCAN_AMT global.A_12_SCAN_AMT
#define A_13_T_INTERLACE global.A_13_T_INTERLACE
#define A_14_JITTER global.A_14_JITTER
#define A_16_GHOST global.A_16_GHOST
#define A_17_CHROMA global.A_17_CHROMA
#define A_18_NOISE global.A_18_NOISE
#define A_19_HUM global.A_19_HUM
#define A_20_SHIVER global.A_20_SHIVER
#define A_21_SMOOTH global.A_21_SMOOTH
#define A_22_BLOCK global.A_22_BLOCK
#define A_23_T_SMOOTH global.A_23_T_SMOOTH
#define A_24_GLOW global.A_24_GLOW
#define A_25_BLACK global.A_25_BLACK
#define A_26_INTENS global.A_26_INTENS
#define A_27_GAMMA global.A_27_GAMMA
#define A_28_CROP global.A_28_CROP
#define A_29_SOFT_BLUR global.A_29_SOFT_BLUR
#define A_30_TEMP global.A_30_TEMP
#define A_31_DECAY global.A_31_DECAY
#define B_BEZEL global.B_BEZEL
#define B_THEME_TOGGLE global.B_THEME_TOGGLE
#define B_01_CORNER_R global.B_01_CORNER_R
#define B_02_BORDER global.B_02_BORDER
#define B_03_BEZEL_GRAIN global.B_03_BEZEL_GRAIN
#define B_04_BEZEL_COL global.B_04_BEZEL_COL
#define B_05_BEZEL_SHADOW global.B_05_BEZEL_SHADOW
#define B_06_BEZEL_REFLECT_BLUR global.B_06_BEZEL_REFLECT_BLUR
#define B_07_FRAME global.B_07_FRAME
#define N_NSO global.N_NSO
#define N_01_DOT_SIZE global.N_01_DOT_SIZE
#define N_02_BRIGHT global.N_02_BRIGHT
#define N_03_GAP global.N_03_GAP
#define N_04_REFLECT global.N_04_REFLECT
#define N_05_REFL_CUT global.N_05_REFL_CUT
#define N_06_REFL_LIFT global.N_06_REFL_LIFT
#define M_MISC global.M_MISC
#define M_01_SYNC global.M_01_SYNC
#define M_02_RAINBOW global.M_02_RAINBOW
#define M_03_GEOM global.M_03_GEOM
#define M_04_BREATH global.M_04_BREATH
#define M_05_SCATTER global.M_05_SCATTER
#define M_06_AFTERGLOW global.M_06_AFTERGLOW
#define M_07_MAG_TINT global.M_07_MAG_TINT
#define M_08_CONVERGE global.M_08_CONVERGE
#define M_09_BEAM_BLOOM global.M_09_BEAM_BLOOM
#define M_10_VIGNETTE global.M_10_VIGNETTE
#define M_11_FLICKER global.M_11_FLICKER
#define M_12_VHOLD global.M_12_VHOLD
#define M_13_VHOLD_SPEED global.M_13_VHOLD_SPEED
#define M_14_EDGE_RING global.M_14_EDGE_RING
#define M_15_BFI global.M_15_BFI
#define T_TUBEGLASS global.T_TUBEGLASS
#define T_01_REFRACT global.T_01_REFRACT
#define T_02_SHINE global.T_02_SHINE
#define T_03_R_TYPE global.T_03_R_TYPE
#define T_04_WEAR global.T_04_WEAR
#define T_05_POS_X global.T_05_POS_X
#define T_06_POS_Y global.T_06_POS_Y
#define T_07_TINT global.T_07_TINT
#define T_08_TINT_STR global.T_08_TINT_STR
#define T_09_DUST global.T_09_DUST
#define DIFF_TAB global.DIFF_TAB
#define D_01_SPLIT global.D_01_SPLIT

#pragma stage vertex
layout(location = 0) in vec4 Position;
layout(location = 1) in vec2 TexCoord;
layout(location = 0) out vec2 vTexCoord;

void main()
{
    gl_Position = global.MVP * Position;
    vTexCoord = TexCoord;
}

#pragma stage fragment
layout(location = 0) in vec2 vTexCoord;
layout(location = 0) out vec4 FragColor;
layout(set = 0, binding = 2) uniform sampler2D Source;

// ___________________________________________________________________________
// API de shaders do Dolphin
// ___________________________________________________________________________
vec2  GetCoordinates()        { return vTexCoord; }
vec2  GetResolution()         { return global.OutputSize.xy; }
float GetTime()               { return float(global.FrameCount) * (1.0 / 60.0); }
vec4  SampleLocation(vec2 uv) { return textureLod(Source, uv, 0.0); }
void  SetOutput(vec4 c)       { FragColor = c; }

#define PI        3.14159265
#define LUMA_R    0.299
#define LUMA_G    0.587
#define LUMA_B    0.114
#define INV_LUMA  (1.0 / (LUMA_R + LUMA_G + LUMA_B))

// ___________________________________________________________________________
// Helpers
// ___________________________________________________________________________
float getSDistXY(vec2 warpedUV, float cornerR, float insetX, float insetY)
{
    vec2 q = abs(warpedUV - 0.5) - vec2(0.5 - insetX, 0.5 - insetY) + cornerR;
    return length(max(q, 0.0)) + min(max(q.x, q.y), 0.0) - cornerR;
}

float hash(vec2 p)
{
    return fract(sin(dot(p, vec2(12.9898, 78.233))) * 43758.5453);
}

float valueNoise(vec2 uv)
{
    vec2 i = floor(uv);
    vec2 f = fract(uv);
    vec2 s = f * f * (3.0 - 2.0 * f);
    float c00 = hash(i + vec2(0.0, 0.0));
    float c10 = hash(i + vec2(1.0, 0.0));
    float c01 = hash(i + vec2(0.0, 1.0));
    float c11 = hash(i + vec2(1.0, 1.0));
    return mix(mix(c00, c10, s.x), mix(c01, c11, s.x), s.y) - 0.5;
}

vec3 bezelColor(int idx)
{
    if (idx == 0) return vec3(0.25, 0.02, 0.02);
    if (idx == 1) return vec3(0.25, 0.22, 0.02);
    if (idx == 2) return vec3(0.18, 0.18, 0.18);
    if (idx == 3) return vec3(0.05, 0.05, 0.05);
                  return vec3(0.08, 0.09, 0.10);
}

// Nintendo Switch Online style background: very dark grey with a subtle dot grid
// edgeT: 0 at the border of the game image, 1 at the outer edge of the screen.
// Dots are largest at the outer edge and shrink until they vanish, leaving pure black near the game.
vec3 nsoBackground(vec2 uv_raw, vec2 res, float dotSize, float bright, float edgeT, float gap)
{
    // normalize to ~1080p so the dot spacing looks the same at any resolution
    vec2 p = uv_raw * res / (res.y / 1080.0);
    // grid rotated by 45 degrees
    vec2 r = vec2(p.x + p.y, p.x - p.y) * 0.7071;
    vec2 cell = fract(r / dotSize) - 0.5;

    // dot radius grows with distance from the game border
    float grow = smoothstep(gap, 1.0, edgeT);
    float rad  = max(0.46 * grow, 0.001);
    float m    = 1.0 - smoothstep(rad * 0.7, rad, length(cell));

    // pure black between the dots
    return vec3(0.13) * m * bright;
}

// ___________________________________________________________________________
void main()
{
    vec2 uv_raw = GetCoordinates();

    if (A_GAMEFRAME < 0.5) {
        SetOutput(SampleLocation(uv_raw));
        return;
    }

    vec2 res    = GetResolution();
    vec2 invRes = 1.0 / res;
    float  time   = GetTime();

    float toggle      = sign(sin(time * 60.0));
    float frameToggle = fma(toggle, 0.5, 0.5);

    // Geometry & Curvature
    vec2 centered_bezel = (uv_raw - 0.5) * 2.0;
    vec2 bB_bezel       = centered_bezel.yx * centered_bezel.yx;
    vec2 warpedUV       = fma(centered_bezel * fma(bB_bezel, vec2(A_06_BULGE), vec2(1.0)), vec2(0.5), vec2(0.5));

    vec2 uv = uv_raw;
    if (A_13_T_INTERLACE > 0.5) {
        uv.y += toggle * (A_14_JITTER * invRes.y * 1.5);
    }

    if (M_MISC > 0.5 && M_12_VHOLD > 0.0) {
        float vroll = sin(time * M_13_VHOLD_SPEED) * M_12_VHOLD * 0.12;
        uv.y = fract(uv.y + vroll);
    }
    vec2 centered_game = (uv - 0.5) * 2.0;
    vec2 bB_game       = centered_game.yx * centered_game.yx;
    vec2 gameWarpedUV  = fma(centered_game * fma(bB_game, vec2(A_06_BULGE), vec2(1.0)), vec2(0.5), vec2(0.5));

    float baseInset  = (B_BEZEL > 0.5) ? B_02_BORDER : 0.0;
    float invScale   = 1.0 / (1.0 - baseInset * 2.0);

    vec2 scaledUV  = (gameWarpedUV - baseInset) * invScale;
    scaledUV = fma(scaledUV, vec2(1.0 - A_28_CROP * 2.0), vec2(A_28_CROP));

    float effectiveFrame = (B_BEZEL > 0.5) ? B_07_FRAME : 0.0;
    float totalInset     = baseInset + effectiveFrame;

    vec2 tubeUV = scaledUV;
    if (T_TUBEGLASS > 0.5) {
        vec2 screenOffset   = warpedUV - 0.5;
        float  distFromCenter = length(screenOffset);
        vec2 uvClamped  = clamp(scaledUV, 0.0, 1.0);
        float  insideGame = float(uvClamped == scaledUV);
        float  edgeFalloff   = smoothstep(0.48, 0.25, distFromCenter);
        vec2 refractOffset = screenOffset * (dot(screenOffset, screenOffset) * T_01_REFRACT * edgeFalloff * insideGame);
        tubeUV += refractOffset * invScale;
    }

    vec2 tubeOffset = tubeUV - 0.5;

    // Bezel & Pillarbox Clipping
    float outerInsetX = baseInset;
    float outerInsetY = baseInset;
    float gameInsetX  = totalInset;
    float gameInsetY  = totalInset;
    if (A_00_FORCE_43 > 0.5) {
        float activeWidth  = (4.0 / 3.0) / (16.0 / 9.0);
        float pillarMargin = (1.0 - activeWidth) * 0.5;

        outerInsetX = baseInset  + pillarMargin;
        gameInsetX  = totalInset + pillarMargin;

        scaledUV.x = (scaledUV.x - pillarMargin) / activeWidth;
        tubeUV.x   = (tubeUV.x   - pillarMargin) / activeWidth;
    }

    float d_outer = getSDistXY(warpedUV, B_01_CORNER_R, outerInsetX, outerInsetY);
    float d_game  = getSDistXY(warpedUV, B_01_CORNER_R, gameInsetX,  gameInsetY);

    if (B_BEZEL > 0.5) {
        if (d_outer > 0.0) {
            bool   nsoOn = (N_NSO > 0.5);
            vec3 bC    = vec3(0.0);

            if (nsoOn) {
                // NSO style: black frame + dotted background on the pillarbox side bars
                if (A_00_FORCE_43 > 0.5) {
                    float nsoAW = (4.0 / 3.0) / (16.0 / 9.0);
                    float nsoPM = (1.0 - nsoAW) * 0.5;
                    if (uv_raw.x < nsoPM || uv_raw.x > 1.0 - nsoPM) {
                        float nsoT = clamp(d_outer / max(outerInsetX, 0.0001), 0.0, 1.0);
                        bC = nsoBackground(uv_raw, res, N_01_DOT_SIZE, N_02_BRIGHT, nsoT, N_03_GAP);
                    }
                }
            } else {
                int   colorIdx = clamp(int(B_04_BEZEL_COL), 0, 4);
                bC = bezelColor(colorIdx);
                bC += fma(hash(uv_raw * 1.5), B_03_BEZEL_GRAIN, -0.5 * B_03_BEZEL_GRAIN);

                // Optional Speaker Grille Theme (Toggleable)
                if (B_THEME_TOGGLE > 0.5 && A_00_FORCE_43 > 0.5) {
                    float activeWidth  = (4.0 / 3.0) / (16.0 / 9.0);
                    float pillarMargin = (1.0 - activeWidth) * 0.5;
                    bool inLeftPillar  = uv_raw.x < pillarMargin;
                    bool inRightPillar = uv_raw.x > (1.0 - pillarMargin);

                    if (inLeftPillar || inRightPillar) {
                        float stripX = inLeftPillar ? uv_raw.x / pillarMargin : (1.0 - uv_raw.x) / pillarMargin;
                        float stripY = uv_raw.y;
                        if (stripX > 0.12 && stripX < 0.88 && stripY > 0.18 && stripY < 0.82) {
                            float gX = (stripX - 0.12) / 0.76;
                            float gY = (stripY - 0.18) / 0.64;
                            float dotFreq = 180.0;
                            float aspect  = res.x / res.y;
                            vec2 dotUV = vec2(gX * dotFreq * pillarMargin * 0.76 * aspect, gY * dotFreq * 0.64);
                            vec2 dotCell = fract(dotUV) - 0.5;
                            float  hole = mix(max(abs(dotCell.x), abs(dotCell.y)), length(dotCell), 0.4);
                            float  holeMask = smoothstep(0.34, 0.26, hole);
                            bC = mix(bC * 0.82, vec3(0.03, 0.028, 0.024), holeMask) * 0.88;
                        }
                    }
                }
            }

            // Small game-light reflection on the frame (original behaviour, kept in NSO mode)
            float reflInsetX = (A_00_FORCE_43 > 0.5) ? gameInsetX : totalInset;
            vec2 toCenter   = 0.5 - warpedUV;
            float  distToEdge = max(abs(toCenter.x) - (0.5 - reflInsetX), abs(toCenter.y) - (0.5 - gameInsetY));

            if (distToEdge > 0.0 && distToEdge < 0.05) {
                vec2 reflectUV = warpedUV;
                if (abs(toCenter.x) / (0.5 - reflInsetX) > abs(toCenter.y) / (0.5 - gameInsetY)) {
                    reflectUV.x = (toCenter.x > 0.0) ? reflInsetX + 0.05 : 1.0 - reflInsetX - 0.05;
                } else {
                    reflectUV.y = (toCenter.y > 0.0) ? gameInsetY + 0.05 : 1.0 - gameInsetY - 0.05;
                }
                vec2 gameReflectUV = vec2((reflectUV.x - reflInsetX) / (1.0 - reflInsetX * 2.0), (reflectUV.y - gameInsetY) / (1.0 - gameInsetY * 2.0));
                vec3 reflection = SampleLocation(gameReflectUV).rgb;
                if (nsoOn) reflection = pow(max(reflection, 0.0), vec3(1.0 / N_06_REFL_LIFT));
                float  reflectStrength = smoothstep(0.05, 0.0, distToEdge);
                float  reflGain = nsoOn ? 0.15 * N_04_REFLECT : 0.15;
                float  reflCut  = nsoOn ? N_05_REFL_CUT : 1.0;
                bC = mix(bC, fma(reflection, vec3(reflGain), bC), reflectStrength * smoothstep(0.3 * reflCut, 0.7 * reflCut, dot(reflection, vec3(LUMA_R, LUMA_G, LUMA_B))));
            }

            if (!nsoOn) {
                vec2 bezelCentered = warpedUV - 0.5;
                bC *= 1.0 + dot(vec3(bezelCentered, 0.0), normalize(vec3(-0.6, 0.8, 0.0))) * 0.28;
            }

            SetOutput(vec4(bC * (nsoOn ? 1.0 : (1.0 - d_outer)), 1.0));
            return;
        }
        if (d_game > 0.0) {
            SetOutput(vec4(0.0, 0.0, 0.0, 1.0));
            return;
        }
    } else if (d_outer > 0.0) {
        vec3 bg = vec3(0.0);
        if (N_NSO > 0.5 && A_00_FORCE_43 > 0.5) {
            float nsoT = clamp(d_outer / max(outerInsetX, 0.0001), 0.0, 1.0);
            bg = nsoBackground(uv_raw, res, N_01_DOT_SIZE, N_02_BRIGHT, nsoT, N_03_GAP);
        }
        SetOutput(vec4(bg, 1.0));
        return;
    }

    // Signal Processing & Convergence
    float  aspectRatio = res.x * invRes.y;
    vec2 loRes      = vec2(A_01_RES * aspectRatio, A_01_RES);
    vec2 snappedUV = (floor(tubeUV * loRes) + 0.5) / loRes;
    vec2 texUV = mix(mix(tubeUV, snappedUV, 0.5), snappedUV, A_02_SHARP);

    if (M_MISC > 0.5) {
        if (M_01_SYNC > 0.0) texUV.x += fma(hash(vec2(time, texUV.y)), 0.01 * M_01_SYNC, -0.005 * M_01_SYNC);
        if (M_03_GEOM > 0.0) texUV.x += fma(texUV.y - 0.5, 0.02 * M_03_GEOM, texUV.y * 0.03 * M_03_GEOM * (texUV.x - 0.5));
        if (M_04_BREATH > 0.0) {
            float  avgLuma = dot(SampleLocation(vec2(0.5)).rgb, vec3(LUMA_R, LUMA_G, LUMA_B));
            texUV = fma(texUV - 0.5, vec2(fma(avgLuma * 0.015, M_04_BREATH, 1.0)), vec2(0.5));
        }
    }

    float  distSq   = dot(tubeOffset, tubeOffset);
    float  totalOff = ((M_MISC > 0.5) ? (M_08_CONVERGE * invRes.x * 2.5) * distSq : 0.0) + (A_17_CHROMA * invRes.x) * fma(pow(length(tubeOffset), 1.8), 1.0, 0.15);
    vec2 offVec   = vec2(totalOff, 0.0);

    vec3 tex;
    tex.r = SampleLocation(texUV + offVec).r;
    tex.g = SampleLocation(texUV).g;
    tex.b = SampleLocation(texUV - offVec).b;

    if (A_16_GHOST > 0.0) tex = max(tex, SampleLocation(texUV - vec2(4.0 * invRes.x, 0.0)).rgb * (A_16_GHOST * 0.4));

    if (M_MISC > 0.5 && M_14_EDGE_RING > 0.0) {
        vec3 ring = (tex * 2.0 - SampleLocation(texUV - vec2(invRes.x, 0.0)).rgb - SampleLocation(texUV + vec2(invRes.x, 0.0)).rgb) * M_14_EDGE_RING * 0.6;
        tex = clamp(tex + ring, 0.0, 1.5);
    }

    if (A_23_T_SMOOTH > 0) {
        float  blurR = float(A_23_T_SMOOTH) * invRes.x * 0.8;
        vec2 bx    = vec2(blurR, 0.0);
        vec2 by    = vec2(0.0, blurR);
        vec2 bd    = vec2(blurR, blurR) * 0.707;
        tex = tex * 0.36 + (SampleLocation(texUV + bx).rgb + SampleLocation(texUV - bx).rgb + SampleLocation(texUV + by).rgb + SampleLocation(texUV - by).rgb) * 0.08
              + (SampleLocation(texUV + bd).rgb + SampleLocation(texUV - bd).rgb + SampleLocation(texUV + vec2(blurR, -blurR) * 0.707).rgb + SampleLocation(texUV + vec2(-blurR, blurR) * 0.707).rgb) * 0.05;
    }

    float luma = dot(tex, vec3(LUMA_R, LUMA_G, LUMA_B));

    if (M_MISC > 0.5) {
        if (M_07_MAG_TINT > 0.0) tex.rb += pow(length(tubeOffset), 2.5) * M_07_MAG_TINT * vec2(0.3, 0.5);
        if (M_06_AFTERGLOW > 0.0) tex = max(tex, SampleLocation(tubeUV - vec2(0.0, 1.5 * invRes.y)).rgb * (M_06_AFTERGLOW * 0.4));
    }

    tex = mix(tex, vec3(luma), 1.0 - A_05_PURITY);
    tex = mix(vec3(luma), fma(tex - 0.5, vec3(A_03_CONTRAST), vec3(0.5)), A_04_SAT);

    if (A_30_TEMP < 0.999 || A_30_TEMP > 1.001) {
        vec3 warm = tex * vec3(1.08, 1.01, 0.88);
        vec3 cool = tex * vec3(0.88, 0.97, 1.12);
        tex = (A_30_TEMP < 1.0) ? mix(warm, tex, A_30_TEMP) : mix(tex, cool, A_30_TEMP - 1.0);
    }

    tex = pow(max(tex + A_25_BLACK, 0.0), vec3(A_27_GAMMA * (1.0 / 2.2)));

    if (A_31_DECAY > 0.0) {
        vec3 prev = pow(max(SampleLocation(tubeUV - vec2(0.0, invRes.y)).rgb + A_25_BLACK, 0.0), vec3(A_27_GAMMA * (1.0 / 2.2)));
        tex = max(tex, prev * (vec3(0.15, 0.55, 0.35) * A_31_DECAY));
    }

    if (A_29_SOFT_BLUR > 0.0) {
        vec2 blurStep = invRes * (A_29_SOFT_BLUR * 0.5);
        tex = tex * 0.4 + (SampleLocation(tubeUV + blurStep).rgb + SampleLocation(tubeUV + vec2(-blurStep.x, blurStep.y)).rgb + SampleLocation(tubeUV + vec2(blurStep.x, -blurStep.y)).rgb + SampleLocation(tubeUV - blurStep).rgb) * 0.15;
    }

    // Scanlines & Mask
    float scanline = mix(1.0, fma(fma(0.3 * sin((fma(uv.y, res.y * A_12_SCAN_AMT * PI, (A_13_T_INTERLACE > 0.5) ? frameToggle * PI * A_14_JITTER : 0.0)) * 2.0), 1.0 / 1.3, sin(fma(uv.y, res.y * A_12_SCAN_AMT * PI, (A_13_T_INTERLACE > 0.5) ? frameToggle * PI * A_14_JITTER : 0.0)) / 1.3), 0.5, 0.5), A_11_SCAN_D * fma(-luma, M_09_BEAM_BLOOM, 1.0));
    if (A_13_T_INTERLACE > 0.5) scanline *= mix(1.0, (frameToggle == mod(floor(uv_raw.y * res.y), 2.0)) ? 1.15 : 0.85, A_14_JITTER);
    scanline *= fma(sin(fma(-time, 2.0, warpedUV.y * 12.0)), A_19_HUM, 1.0);

    vec3 msk = vec3(1.0);
    vec2 moireUV = tubeUV + vec2(luma * A_20_SHIVER * 0.012 + sin(time * 2.0) * (1.0 - A_21_SMOOTH) * A_20_SHIVER * 0.003);
    if (A_22_BLOCK > 1.0) moireUV = (floor(moireUV * (res / A_22_BLOCK)) + 0.5) / (res / A_22_BLOCK);
    vec2 mC = (moireUV * res) / A_08_MASK_SCALE;

    if (A_07_MASK_TYPE < 0.5) {
        float triplet = mod(mC.x, 3.0);
        msk = (triplet < 1.0) ? vec3(1.8, 0.2, 0.2) : ((triplet < 2.0) ? vec3(0.2, 1.8, 0.2) : vec3(0.2, 0.2, 1.8));
        msk *= smoothstep(0.15, 0.25, fract(fma(mC.y, 0.24, mod(floor(mC.x * 0.33), 2.0) * A_10_STAGGER * 0.5))) * smoothstep(0.85, 0.75, fract(fma(mC.y, 0.24, mod(floor(mC.x * 0.33), 2.0) * A_10_STAGGER * 0.5)));
    } else if (A_07_MASK_TYPE < 1.5) {
        float triplet = mod(mC.x, 3.0);
        msk = (triplet < 1.0) ? vec3(1.7, 0.25, 0.25) : ((triplet < 2.0) ? vec3(0.25, 1.7, 0.25) : vec3(0.25, 0.25, 1.7));
        msk *= fma(sin(mC.y * 0.5), 0.05, 0.95);
    } else if (A_07_MASK_TYPE < 2.5) {
        msk = fma(vec3(smoothstep(0.45, 0.35, distance(fract(fma(mC, vec2(0.5), vec2(mod(floor(mC.y), 2.0) * 0.5, 0.0))), vec2(0.5)))), vec3(1.7), vec3(0.3));
    } else if (A_07_MASK_TYPE < 3.5) {
        float subpix = mod(mC.x, 3.0);
        vec3 triColor = (subpix < 1.0) ? vec3(1.0, 0.0, 0.0) : ((subpix < 2.0) ? vec3(0.0, 1.0, 0.0) : vec3(0.0, 0.0, 1.0));
        msk = mix(vec3(0.08), triColor * 1.75 + vec3(0.08), smoothstep(0.85, 0.55, length(vec2(fract(mC.x / 3.0) * 3.0 - 1.5, fract(mC.y + mod(floor(mC.x / 3.0), 2.0) * 0.5) * 2.0 - 1.0) * vec2(0.55, 0.75))));
    } else {
        float stripe = mod(mC.x, 3.0);
        vec3 stripeColor = (stripe < 1.0) ? vec3(1.75, 0.15, 0.15) : ((stripe < 2.0) ? vec3(0.15, 1.75, 0.15) : vec3(0.15, 0.15, 1.75));
        msk = mix(vec3(0.05), stripeColor * smoothstep(0.0, 0.25, min(fract(mC.x / 3.0) * 3.0, 3.0 - fract(mC.x / 3.0) * 3.0)), smoothstep(0.0, 0.06, fract(mC.y / 4.0)) * smoothstep(1.0, 0.94, fract(mC.y / 4.0)));
    }

    // Composition & Special FX
    vec3 fcol = tex * mix(vec3(1.0), msk, A_09_PATTERN_STR) * scanline * A_26_INTENS + tex * (A_24_GLOW * 0.4 * luma * (1.0 - distSq));

    if (M_MISC > 0.5) {
        if (M_05_SCATTER > 0.0) fcol += luma * (0.1 * M_05_SCATTER) * vec3(0.8, 0.9, 1.0);
        if (M_02_RAINBOW > 0.0) fcol.rb += sin(fma(tubeUV.x * res.x, 0.5, time)) * (0.1 * M_02_RAINBOW) * (1.0 - luma);
        
        // Combined RF Noise & Snow Static
        if (A_18_NOISE > 0.0) {
            fcol *= fma(hash(tubeUV + time) - 0.5, A_18_NOISE, 1.0);
            fcol += fma(vec3(hash(tubeUV + time) + sin(fma(tubeUV.y, 10.0, time * 5.0)) * 0.1), vec3(A_18_NOISE * 0.4), vec3(0.0));
        }

        fcol *= fma(-hash(vec2(time, 0.0)) * 0.05, M_11_FLICKER, 1.0);
        fcol *= fma(-pow(length(tubeOffset) * 1.4, 2.5), M_10_VIGNETTE, 1.0);
        if (M_15_BFI > 0.0) {
            float bfiStrobe = step(0.5, fract(time * 60.0));
            fcol *= mix(1.0, 1.0 - bfiStrobe, M_15_BFI * 0.8);
        }
    }


    if (T_TUBEGLASS > 0.5) {
        vec2 reflBase = warpedUV;
        if (A_00_FORCE_43 > 0.5) reflBase.x = (reflBase.x - ((1.0 - ((4.0 / 3.0) / (16.0 / 9.0))) * 0.5)) / ((4.0 / 3.0) / (16.0 / 9.0));
        vec2 reflUV = reflBase - vec2(T_05_POS_X, T_06_POS_Y);

        float spec = (T_03_R_TYPE < 0.5) ? smoothstep(0.45, 0.0, length((reflUV - vec2(0.18, 0.22)) * vec2(1.0, 0.8))) : ((T_03_R_TYPE < 1.5) ? smoothstep(0.55, 0.0, distance(reflUV, vec2(0.25, 0.5))) * smoothstep(0.02, 0.06, abs(reflUV.x - 0.25)) : smoothstep(0.28, 0.0, abs(reflUV.y - 0.15)) * smoothstep(0.55, 0.0, abs(reflUV.x - 0.5)));
        if (T_04_WEAR > 0.0) spec *= fma(-hash(tubeUV * 15.0), T_04_WEAR, 1.0);

        fcol += (spec * T_02_SHINE * fma(-luma, 0.5, 1.1) * vec3(0.9, 0.95, 1.0)) * step(d_game, 0.0);

        if (T_08_TINT_STR > 0.0) {
            vec3 tintColor = (T_07_TINT < 0.5) ? vec3(1.0) : ((T_07_TINT < 1.5) ? vec3(0.88, 0.90, 0.88) : ((T_07_TINT < 2.5) ? vec3(0.85, 0.92, 0.84) : vec3(0.84, 0.88, 0.95)));
            fcol *= mix(vec3(1.0), tintColor, T_08_TINT_STR);
        }

        if (T_09_DUST > 0.0) {
            float dustLayer = valueNoise(warpedUV * 8.0) * 0.72 + valueNoise(warpedUV * 40.0) * 0.28;
            fcol *= mix(vec3(1.0), vec3(1.0 + dustLayer * 0.18, 1.0 + dustLayer * 0.14, 1.0 + dustLayer * 0.07), T_09_DUST);
        }
    }

    if (B_BEZEL > 0.5) fcol *= fma(-smoothstep(-0.05, 0.0, d_game) * B_05_BEZEL_SHADOW, 0.8, 1.0);

    // Difference Check Split Screen Comparison
    if (DIFF_TAB > 0.5 && D_01_SPLIT > 0.0) {
        float splitX = D_01_SPLIT;
        if (abs(uv_raw.x - splitX) < (1.5 * invRes.x)) {
            fcol = vec3(1.0, 1.0, 1.0); // White vertical split line
        } else if (uv_raw.x < splitX) {
            vec2 cleanUV = uv_raw;
            if (A_00_FORCE_43 > 0.5) {
                float activeWidth  = (4.0 / 3.0) / (16.0 / 9.0);
                float pillarMargin = (1.0 - activeWidth) * 0.5;
                if (cleanUV.x >= pillarMargin && cleanUV.x <= (1.0 - pillarMargin)) {
                    cleanUV.x = (cleanUV.x - pillarMargin) / activeWidth;
                    fcol = SampleLocation(cleanUV).rgb;
                } else {
                    fcol = vec3(0.0);
                }
            } else {
                fcol = SampleLocation(cleanUV).rgb;
            }
        }
    }

    SetOutput(vec4(max(fcol, 0.0), 1.0));
}
