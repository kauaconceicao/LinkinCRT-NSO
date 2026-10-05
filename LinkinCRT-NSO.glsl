/*
[configuration]
[OptionBool]
GUIName = [GAME FRAME] Main Modifiers
OptionName = A_GAMEFRAME
DefaultValue = true

[OptionBool]
GUIName = 00. Force 4:3 Game Frame (for 16:9 Dolphin output)
OptionName = A_00_FORCE_43
DependentOption = A_GAMEFRAME
DefaultValue = True

[OptionRangeFloat]
GUIName = 01. Perceived Resolution (Lo-Fi)
OptionName = A_01_RES
DependentOption = A_GAMEFRAME
MinValue = 120.0
MaxValue = 1080.0
StepAmount = 20.0
DefaultValue = 440.0

[OptionRangeFloat]
GUIName = 02. Downscale Sharpness
OptionName = A_02_SHARP
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 03. Color Contrast
OptionName = A_03_CONTRAST
DependentOption = A_GAMEFRAME
MinValue = 0.5
MaxValue = 2.0
StepAmount = 0.05
DefaultValue = 1.15

[OptionRangeFloat]
GUIName = 04. Color Saturation
OptionName = A_04_SAT
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 2.0
StepAmount = 0.05
DefaultValue = 1.15

[OptionRangeFloat]
GUIName = 05. Phosphor Purity (P22 Colors)
OptionName = A_05_PURITY
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.9

[OptionRangeFloat]
GUIName = 06. Tube Bulge (Curvature)
OptionName = A_06_BULGE
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 0.5
StepAmount = 0.01
DefaultValue = 0.05

[OptionRangeFloat]
GUIName = 07. Tube Pattern (0:Pana, 1:Sony, 2:VGA, 3:ShadowMask, 4:SlotMask)
OptionName = A_07_MASK_TYPE
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 4.0
StepAmount = 1.0
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 08. Base Mask Size
OptionName = A_08_MASK_SCALE
DependentOption = A_GAMEFRAME
MinValue = 0.5
MaxValue = 8.0
StepAmount = 0.1
DefaultValue = 0.6

[OptionRangeFloat]
GUIName = 09. Global CRT Pattern Strength
OptionName = A_09_PATTERN_STR
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.15

[OptionRangeFloat]
GUIName = 10. Stagger Intensity (Slot Offset)
OptionName = A_10_STAGGER
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 2.0
StepAmount = 0.1
DefaultValue = 2.0

[OptionRangeFloat]
GUIName = 11. Scanline Darkness
OptionName = A_11_SCAN_D
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.45

[OptionRangeFloat]
GUIName = 12. Scanline Amount (Density)
OptionName = A_12_SCAN_AMT
DependentOption = A_GAMEFRAME
MinValue = 0.25
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.55

[OptionBool]
GUIName = 13. Simulate Interlaced Jitter (480i)
OptionName = A_13_T_INTERLACE
DependentOption = A_GAMEFRAME
DefaultValue = true

[OptionRangeFloat]
GUIName = 14. Interlace Jitter Strength
OptionName = A_14_JITTER
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.1

[OptionRangeFloat]
GUIName = 16. Signal Ghosting (Ringing)
OptionName = A_16_GHOST
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.85

[OptionRangeFloat]
GUIName = 17. Chromatic Aberration
OptionName = A_17_CHROMA
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 10.0
StepAmount = 0.1
DefaultValue = 1.0

[OptionRangeFloat]
GUIName = 18. Signal Noise & Static (RF Grain)
OptionName = A_18_NOISE
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 0.5
StepAmount = 0.01
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 19. 60Hz Hum Bar (Interference)
OptionName = A_19_HUM
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 0.5
StepAmount = 0.01
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 20. Moire Morph Intensity
OptionName = A_20_SHIVER
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.70

[OptionRangeFloat]
GUIName = 21. Morph Smoothness (Temporal Lag)
OptionName = A_21_SMOOTH
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.50

[OptionRangeFloat]
GUIName = 22. Moire Blocking Size(Grid)(1:Global)
OptionName = A_22_BLOCK
DependentOption = A_GAMEFRAME
MinValue = 1.0
MaxValue = 32.0
StepAmount = 1.0
DefaultValue = 1.0

[OptionRangeInteger]
GUIName = 23. Temporal Smoothing (0-4 frames)
OptionName = A_23_T_SMOOTH
DependentOption = A_GAMEFRAME
MinValue = 0
MaxValue = 4
StepAmount = 1
DefaultValue = 0

[OptionRangeFloat]
GUIName = 24. Ambient Glow (Adaptive)
OptionName = A_24_GLOW
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.20

[OptionRangeFloat]
GUIName = 25. Black Level Lift
OptionName = A_25_BLACK
DependentOption = A_GAMEFRAME
MinValue = -0.1
MaxValue = 0.2
StepAmount = 0.01
DefaultValue = 0.02

[OptionRangeFloat]
GUIName = 26. Brightness Master
OptionName = A_26_INTENS
DependentOption = A_GAMEFRAME
MinValue = 0.5
MaxValue = 3.0
StepAmount = 0.05
DefaultValue = 1.2

[OptionRangeFloat]
GUIName = 27. Display Gamma Correction
OptionName = A_27_GAMMA
DependentOption = A_GAMEFRAME
MinValue = 1.8
MaxValue = 2.6
StepAmount = 0.05
DefaultValue = 2.20

[OptionRangeFloat]
GUIName = 28. Overscan Crop
OptionName = A_28_CROP
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 0.1
StepAmount = 0.005
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 29. Soft Blur (Post-Phosphor)
OptionName = A_29_SOFT_BLUR
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 2.0
StepAmount = 0.01
DefaultValue = 0.05

[OptionRangeFloat]
GUIName = 30. Colour Temperature (0:Warm 6500K, 1:Neutral, 2:Cool 9300K)
OptionName = A_30_TEMP
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 2.0
StepAmount = 0.1
DefaultValue = 1.0

[OptionRangeFloat]
GUIName = 31. Phosphor Decay (Green/Blue Persistence)
OptionName = A_31_DECAY
DependentOption = A_GAMEFRAME
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.20

[OptionBool]
GUIName = [TV BEZEL] Enable Bezel
OptionName = B_BEZEL
DefaultValue = true

[OptionBool]
GUIName = 00. Enable Bezel Speaker Grille Theme
OptionName = B_THEME_TOGGLE
DependentOption = B_BEZEL
DefaultValue = false

[OptionRangeFloat]
GUIName = 01. Corner Roundness
OptionName = B_01_CORNER_R
DependentOption = B_BEZEL
MinValue = 0.0
MaxValue = 0.05
StepAmount = 0.01
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 02. Bezel Border Size
OptionName = B_02_BORDER
DependentOption = B_BEZEL
MinValue = 0.0
MaxValue = 0.2
StepAmount = 0.01
DefaultValue = 0.01

[OptionRangeFloat]
GUIName = 03. Bezel Grain
OptionName = B_03_BEZEL_GRAIN
DependentOption = B_BEZEL
MinValue = 0.0
MaxValue = 0.3
StepAmount = 0.01
DefaultValue = 0.08

[OptionRangeFloat]
GUIName = 04. Bezel Color (0:Grey, 1:Red, 2:Tan, 3:LGrey, 4:Black)
OptionName = B_04_BEZEL_COL
DependentOption = B_BEZEL
MinValue = 0.0
MaxValue = 4.0
StepAmount = 1.0
DefaultValue = 2.0

[OptionRangeFloat]
GUIName = 05. Bezel Shadow onto Screen
OptionName = B_05_BEZEL_SHADOW
DependentOption = B_BEZEL
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.15

[OptionRangeFloat]
GUIName = 06. Bezel Reflection Blur (0:Sharp, 1:Med, 2:High)
OptionName = B_06_BEZEL_REFLECT_BLUR
DependentOption = B_BEZEL
MinValue = 0.0
MaxValue = 2.0
StepAmount = 1.0
DefaultValue = 1.0

[OptionRangeFloat]
GUIName = 07. Inner Black Frame Size
OptionName = B_07_FRAME
DependentOption = B_BEZEL
MinValue = 0.0
MaxValue = 0.05
StepAmount = 0.005
DefaultValue = 0.01

[OptionBool]
GUIName = [NSO THEME] Switch Online Style Side Bars (replaces speaker grille)
OptionName = N_NSO
DefaultValue = true

[OptionRangeFloat]
GUIName = 01. Dot Size
OptionName = N_01_DOT_SIZE
DependentOption = N_NSO
MinValue = 3.0
MaxValue = 40.0
StepAmount = 0.5
DefaultValue = 12.0

[OptionRangeFloat]
GUIName = 02. Background Brightness
OptionName = N_02_BRIGHT
DependentOption = N_NSO
MinValue = 0.0
MaxValue = 3.0
StepAmount = 0.05
DefaultValue = 1.0

[OptionRangeFloat]
GUIName = 03. Black Edge Gap (dots vanish near the game)
OptionName = N_03_GAP
DependentOption = N_NSO
MinValue = 0.0
MaxValue = 0.6
StepAmount = 0.01
DefaultValue = 0.15

[OptionRangeFloat]
GUIName = 04. Frame Reflection (game light on the frame)
OptionName = N_04_REFLECT
DependentOption = N_NSO
MinValue = 0.0
MaxValue = 6.0
StepAmount = 0.05
DefaultValue = 1.25

[OptionRangeFloat]
GUIName = 05. Reflection Dark Cutoff (lower = less black in reflections)
OptionName = N_05_REFL_CUT
DependentOption = N_NSO
MinValue = 0.05
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.5

[OptionRangeFloat]
GUIName = 06. Reflection Dark Lift (higher = brighter dark areas)
OptionName = N_06_REFL_LIFT
DependentOption = N_NSO
MinValue = 1.0
MaxValue = 4.0
StepAmount = 0.1
DefaultValue = 2.0

[OptionBool]
GUIName = [ENHANCED FX] Enable Additional Effects
OptionName = M_MISC
DefaultValue = true

[OptionRangeFloat]
GUIName = 01. H-Sync Glitch (Tracking Error)
OptionName = M_01_SYNC
DependentOption = M_MISC
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.1
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 02. Rainbow Banding (Dot Crawl)
OptionName = M_02_RAINBOW
DependentOption = M_MISC
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.1
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 03. Geometry Pincushion
OptionName = M_03_GEOM
DependentOption = M_MISC
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.1
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 04. Breathing Effect (Tube Swell)
OptionName = M_04_BREATH
DependentOption = M_MISC
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.1
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 05. Blue Scatter (Lens Flare)
OptionName = M_05_SCATTER
DependentOption = M_MISC
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.1
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 06. Phosphorus Afterglow (Persistence)
OptionName = M_06_AFTERGLOW
DependentOption = M_MISC
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.1
DefaultValue = 0.3

[OptionRangeFloat]
GUIName = 07. Magnetic Purity Failure (Tint)
OptionName = M_07_MAG_TINT
DependentOption = M_MISC
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.1
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 08. Corner Convergence Error
OptionName = M_08_CONVERGE
DependentOption = M_MISC
MinValue = 0.0
MaxValue = 2.0
StepAmount = 0.1
DefaultValue = 1.0

[OptionRangeFloat]
GUIName = 09. Dynamic Beam Bloom
OptionName = M_09_BEAM_BLOOM
DependentOption = M_MISC
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.1
DefaultValue = 0.3

[OptionRangeFloat]
GUIName = 10. Peripheral Vignette
OptionName = M_10_VIGNETTE
DependentOption = M_MISC
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.1
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 11. Phosphor Flicker (60Hz)
OptionName = M_11_FLICKER
DependentOption = M_MISC
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.1
DefaultValue = 0.2

[OptionRangeFloat]
GUIName = 12. Vertical Hold Instability
OptionName = M_12_VHOLD
DependentOption = M_MISC
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 13. V-Hold Roll Speed
OptionName = M_13_VHOLD_SPEED
DependentOption = M_MISC
MinValue = 0.1
MaxValue = 4.0
StepAmount = 0.1
DefaultValue = 0.5

[OptionRangeFloat]
GUIName = 14. Edge Ringing (NTSC Luma Overshoot)
OptionName = M_14_EDGE_RING
DependentOption = M_MISC
MinValue = 0.0
MaxValue = 0.05
StepAmount = 0.05
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 15. Black Frame Insertion (CRT Strobe)
OptionName = M_15_BFI
DependentOption = M_MISC
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.0

[OptionBool]
GUIName = [TUBE GLASS] Enable Glass Effects
OptionName = T_TUBEGLASS
DefaultValue = true

[OptionRangeFloat]
GUIName = 01. Glass Refraction (Distortion)
OptionName = T_01_REFRACT
DependentOption = T_TUBEGLASS
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.1

[OptionRangeFloat]
GUIName = 02. Reflection Brightness
OptionName = T_02_SHINE
DependentOption = T_TUBEGLASS
MinValue = 0.0
MaxValue = 2.0
StepAmount = 0.05
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 03. Reflection Style (0:Diff, 1:Spot, 2:Bar)
OptionName = T_03_R_TYPE
DependentOption = T_TUBEGLASS
MinValue = 0.0
MaxValue = 2.0
StepAmount = 1.0
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 04. Glass Scratches & Wear
OptionName = T_04_WEAR
DependentOption = T_TUBEGLASS
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.1
DefaultValue = 0.3

[OptionRangeFloat]
GUIName = 05. Reflection Position X
OptionName = T_05_POS_X
DependentOption = T_TUBEGLASS
MinValue = -0.5
MaxValue = 0.5
StepAmount = 0.01
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 06. Reflection Position Y
OptionName = T_06_POS_Y
DependentOption = T_TUBEGLASS
MinValue = -0.5
MaxValue = 0.5
StepAmount = 0.01
DefaultValue = 0.0

[OptionRangeFloat]
GUIName = 07. Inner Glass Tint (0:None, 1:Grey, 2:Green, 3:Blue)
OptionName = T_07_TINT
DependentOption = T_TUBEGLASS
MinValue = 0.0
MaxValue = 3.0
StepAmount = 1.0
DefaultValue = 1.0

[OptionRangeFloat]
GUIName = 08. Glass Tint Strength
OptionName = T_08_TINT_STR
DependentOption = T_TUBEGLASS
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 1.0

[OptionRangeFloat]
GUIName = 09. Screen Dust & Smudge
OptionName = T_09_DUST
DependentOption = T_TUBEGLASS
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.05
DefaultValue = 0.45

[OptionBool]
GUIName = [DIFFERENCE CHECK] Split Screen Compare
OptionName = DIFF_TAB
DefaultValue = true

[OptionRangeFloat]
GUIName = 01. Split Position (0: Off, >0: Split Bar X Position)
OptionName = D_01_SPLIT
DependentOption = DIFF_TAB
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.01
DefaultValue = 0.0

[/configuration]
*/

#define PI        3.14159265
#define LUMA_R    0.299
#define LUMA_G    0.587
#define LUMA_B    0.114
#define INV_LUMA  (1.0 / (LUMA_R + LUMA_G + LUMA_B))

// ___________________________________________________________________________
// Helpers
// ___________________________________________________________________________
float getSDistXY(float2 warpedUV, float cornerR, float insetX, float insetY)
{
    float2 q = abs(warpedUV - 0.5) - float2(0.5 - insetX, 0.5 - insetY) + cornerR;
    return length(max(q, 0.0)) + min(max(q.x, q.y), 0.0) - cornerR;
}

float hash(float2 p)
{
    return fract(sin(dot(p, float2(12.9898, 78.233))) * 43758.5453);
}

float valueNoise(float2 uv)
{
    float2 i = floor(uv);
    float2 f = fract(uv);
    float2 s = f * f * (3.0 - 2.0 * f);
    float c00 = hash(i + float2(0.0, 0.0));
    float c10 = hash(i + float2(1.0, 0.0));
    float c01 = hash(i + float2(0.0, 1.0));
    float c11 = hash(i + float2(1.0, 1.0));
    return lerp(lerp(c00, c10, s.x), lerp(c01, c11, s.x), s.y) - 0.5;
}

float3 bezelColor(int idx)
{
    if (idx == 0) return float3(0.25, 0.02, 0.02);
    if (idx == 1) return float3(0.25, 0.22, 0.02);
    if (idx == 2) return float3(0.18, 0.18, 0.18);
    if (idx == 3) return float3(0.05, 0.05, 0.05);
                  return float3(0.08, 0.09, 0.10);
}

// Nintendo Switch Online style background: very dark grey with a subtle dot grid
// edgeT: 0 at the border of the game image, 1 at the outer edge of the screen.
// Dots are largest at the outer edge and shrink until they vanish, leaving pure black near the game.
float3 nsoBackground(float2 uv_raw, float2 res, float dotSize, float bright, float edgeT, float gap)
{
    // normalize to ~1080p so the dot spacing looks the same at any resolution
    float2 p = uv_raw * res / (res.y / 1080.0);
    // grid rotated by 45 degrees
    float2 r = float2(p.x + p.y, p.x - p.y) * 0.7071;
    float2 cell = fract(r / dotSize) - 0.5;

    // dot radius grows with distance from the game border
    float grow = smoothstep(gap, 1.0, edgeT);
    float rad  = max(0.46 * grow, 0.001);
    float m    = 1.0 - smoothstep(rad * 0.7, rad, length(cell));

    // pure black between the dots (no grey base tone)
    return float3(0.13) * m * bright;
}

// ___________________________________________________________________________
void main()
{
    float2 uv_raw = GetCoordinates();

    if (A_GAMEFRAME < 0.5) {
        SetOutput(SampleLocation(uv_raw));
        return;
    }

    float2 res    = GetResolution();
    float2 invRes = 1.0 / res;
    float  time   = GetTime();

    float toggle      = sign(sin(time * 60.0));
    float frameToggle = fma(toggle, 0.5, 0.5);

    // Geometry & Curvature
    float2 centered_bezel = (uv_raw - 0.5) * 2.0;
    float2 bB_bezel       = centered_bezel.yx * centered_bezel.yx;
    float2 warpedUV       = fma(centered_bezel * fma(bB_bezel, float2(A_06_BULGE), float2(1.0)), float2(0.5), float2(0.5));

    float2 uv = uv_raw;
    if (A_13_T_INTERLACE > 0.5) {
        uv.y += toggle * (A_14_JITTER * invRes.y * 1.5);
    }

    if (M_MISC > 0.5 && M_12_VHOLD > 0.0) {
        float vroll = sin(time * M_13_VHOLD_SPEED) * M_12_VHOLD * 0.12;
        uv.y = fract(uv.y + vroll);
    }
    float2 centered_game = (uv - 0.5) * 2.0;
    float2 bB_game       = centered_game.yx * centered_game.yx;
    float2 gameWarpedUV  = fma(centered_game * fma(bB_game, float2(A_06_BULGE), float2(1.0)), float2(0.5), float2(0.5));

    float baseInset  = (B_BEZEL > 0.5) ? B_02_BORDER : 0.0;
    float invScale   = 1.0 / (1.0 - baseInset * 2.0);

    float2 scaledUV  = (gameWarpedUV - baseInset) * invScale;
    scaledUV = fma(scaledUV, float2(1.0 - A_28_CROP * 2.0), float2(A_28_CROP));

    float effectiveFrame = (B_BEZEL > 0.5) ? B_07_FRAME : 0.0;
    float totalInset     = baseInset + effectiveFrame;

    float2 tubeUV = scaledUV;
    if (T_TUBEGLASS > 0.5) {
        float2 screenOffset   = warpedUV - 0.5;
        float  distFromCenter = length(screenOffset);
        float2 uvClamped  = clamp(scaledUV, 0.0, 1.0);
        float  insideGame = float(uvClamped == scaledUV);
        float  edgeFalloff   = smoothstep(0.48, 0.25, distFromCenter);
        float2 refractOffset = screenOffset * (dot(screenOffset, screenOffset) * T_01_REFRACT * edgeFalloff * insideGame);
        tubeUV += refractOffset * invScale;
    }

    float2 tubeOffset = tubeUV - 0.5;

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
            float3 bC    = float3(0.0);

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
                            float2 dotUV = float2(gX * dotFreq * pillarMargin * 0.76 * aspect, gY * dotFreq * 0.64);
                            float2 dotCell = fract(dotUV) - 0.5;
                            float  hole = lerp(max(abs(dotCell.x), abs(dotCell.y)), length(dotCell), 0.4);
                            float  holeMask = smoothstep(0.34, 0.26, hole);
                            bC = lerp(bC * 0.82, float3(0.03, 0.028, 0.024), holeMask) * 0.88;
                        }
                    }
                }
            }

            // Small game-light reflection on the frame (original behaviour, kept in NSO mode)
            float reflInsetX = (A_00_FORCE_43 > 0.5) ? gameInsetX : totalInset;
            float2 toCenter   = 0.5 - warpedUV;
            float  distToEdge = max(abs(toCenter.x) - (0.5 - reflInsetX), abs(toCenter.y) - (0.5 - gameInsetY));

            if (distToEdge > 0.0 && distToEdge < 0.05) {
                float2 reflectUV = warpedUV;
                if (abs(toCenter.x) / (0.5 - reflInsetX) > abs(toCenter.y) / (0.5 - gameInsetY)) {
                    reflectUV.x = (toCenter.x > 0.0) ? reflInsetX + 0.05 : 1.0 - reflInsetX - 0.05;
                } else {
                    reflectUV.y = (toCenter.y > 0.0) ? gameInsetY + 0.05 : 1.0 - gameInsetY - 0.05;
                }
                float2 gameReflectUV = float2((reflectUV.x - reflInsetX) / (1.0 - reflInsetX * 2.0), (reflectUV.y - gameInsetY) / (1.0 - gameInsetY * 2.0));
                float3 reflection = SampleLocation(gameReflectUV).rgb;
                if (nsoOn) reflection = pow(max(reflection, 0.0), float3(1.0 / N_06_REFL_LIFT));
                float  reflectStrength = smoothstep(0.05, 0.0, distToEdge);
                float  reflGain = nsoOn ? 0.15 * N_04_REFLECT : 0.15;
                float  reflCut  = nsoOn ? N_05_REFL_CUT : 1.0;
                bC = lerp(bC, fma(reflection, float3(reflGain), bC), reflectStrength * smoothstep(0.3 * reflCut, 0.7 * reflCut, dot(reflection, float3(LUMA_R, LUMA_G, LUMA_B))));
            }

            if (!nsoOn) {
                float2 bezelCentered = warpedUV - 0.5;
                bC *= 1.0 + dot(float3(bezelCentered, 0.0), normalize(float3(-0.6, 0.8, 0.0))) * 0.28;
            }

            SetOutput(float4(bC * (nsoOn ? 1.0 : (1.0 - d_outer)), 1.0));
            return;
        }
        if (d_game > 0.0) {
            SetOutput(float4(0.0, 0.0, 0.0, 1.0));
            return;
        }
    } else if (d_outer > 0.0) {
        float3 bg = float3(0.0);
        if (N_NSO > 0.5 && A_00_FORCE_43 > 0.5) {
            float nsoT = clamp(d_outer / max(outerInsetX, 0.0001), 0.0, 1.0);
            bg = nsoBackground(uv_raw, res, N_01_DOT_SIZE, N_02_BRIGHT, nsoT, N_03_GAP);
        }
        SetOutput(float4(bg, 1.0));
        return;
    }

    // Signal Processing & Convergence
    float  aspectRatio = res.x * invRes.y;
    float2 loRes      = float2(A_01_RES * aspectRatio, A_01_RES);
    float2 snappedUV = (floor(tubeUV * loRes) + 0.5) / loRes;
    float2 texUV = lerp(lerp(tubeUV, snappedUV, 0.5), snappedUV, A_02_SHARP);

    if (M_MISC > 0.5) {
        if (M_01_SYNC > 0.0) texUV.x += fma(hash(float2(time, texUV.y)), 0.01 * M_01_SYNC, -0.005 * M_01_SYNC);
        if (M_03_GEOM > 0.0) texUV.x += fma(texUV.y - 0.5, 0.02 * M_03_GEOM, texUV.y * 0.03 * M_03_GEOM * (texUV.x - 0.5));
        if (M_04_BREATH > 0.0) {
            float  avgLuma = dot(SampleLocation(float2(0.5)).rgb, float3(LUMA_R, LUMA_G, LUMA_B));
            texUV = fma(texUV - 0.5, float2(fma(avgLuma * 0.015, M_04_BREATH, 1.0)), float2(0.5));
        }
    }

    float  distSq   = dot(tubeOffset, tubeOffset);
    float  totalOff = ((M_MISC > 0.5) ? (M_08_CONVERGE * invRes.x * 2.5) * distSq : 0.0) + (A_17_CHROMA * invRes.x) * fma(pow(length(tubeOffset), 1.8), 1.0, 0.15);
    float2 offVec   = float2(totalOff, 0.0);

    float3 tex;
    tex.r = SampleLocation(texUV + offVec).r;
    tex.g = SampleLocation(texUV).g;
    tex.b = SampleLocation(texUV - offVec).b;

    if (A_16_GHOST > 0.0) tex = max(tex, SampleLocation(texUV - float2(4.0 * invRes.x, 0.0)).rgb * (A_16_GHOST * 0.4));

    if (M_MISC > 0.5 && M_14_EDGE_RING > 0.0) {
        float3 ring = (tex * 2.0 - SampleLocation(texUV - float2(invRes.x, 0.0)).rgb - SampleLocation(texUV + float2(invRes.x, 0.0)).rgb) * M_14_EDGE_RING * 0.6;
        tex = clamp(tex + ring, 0.0, 1.5);
    }

    if (A_23_T_SMOOTH > 0) {
        float  blurR = float(A_23_T_SMOOTH) * invRes.x * 0.8;
        float2 bx    = float2(blurR, 0.0);
        float2 by    = float2(0.0, blurR);
        float2 bd    = float2(blurR, blurR) * 0.707;
        tex = tex * 0.36 + (SampleLocation(texUV + bx).rgb + SampleLocation(texUV - bx).rgb + SampleLocation(texUV + by).rgb + SampleLocation(texUV - by).rgb) * 0.08
              + (SampleLocation(texUV + bd).rgb + SampleLocation(texUV - bd).rgb + SampleLocation(texUV + float2(blurR, -blurR) * 0.707).rgb + SampleLocation(texUV + float2(-blurR, blurR) * 0.707).rgb) * 0.05;
    }

    float luma = dot(tex, float3(LUMA_R, LUMA_G, LUMA_B));

    if (M_MISC > 0.5) {
        if (M_07_MAG_TINT > 0.0) tex.rb += pow(length(tubeOffset), 2.5) * M_07_MAG_TINT * float2(0.3, 0.5);
        if (M_06_AFTERGLOW > 0.0) tex = max(tex, SampleLocation(tubeUV - float2(0.0, 1.5 * invRes.y)).rgb * (M_06_AFTERGLOW * 0.4));
    }

    tex = lerp(tex, float3(luma), 1.0 - A_05_PURITY);
    tex = lerp(float3(luma), fma(tex - 0.5, float3(A_03_CONTRAST), float3(0.5)), A_04_SAT);

    if (A_30_TEMP < 0.999 || A_30_TEMP > 1.001) {
        float3 warm = tex * float3(1.08, 1.01, 0.88);
        float3 cool = tex * float3(0.88, 0.97, 1.12);
        tex = (A_30_TEMP < 1.0) ? lerp(warm, tex, A_30_TEMP) : lerp(tex, cool, A_30_TEMP - 1.0);
    }

    tex = pow(max(tex + A_25_BLACK, 0.0), float3(A_27_GAMMA * (1.0 / 2.2)));

    if (A_31_DECAY > 0.0) {
        float3 prev = pow(max(SampleLocation(tubeUV - float2(0.0, invRes.y)).rgb + A_25_BLACK, 0.0), float3(A_27_GAMMA * (1.0 / 2.2)));
        tex = max(tex, prev * (float3(0.15, 0.55, 0.35) * A_31_DECAY));
    }

    if (A_29_SOFT_BLUR > 0.0) {
        float2 blurStep = invRes * (A_29_SOFT_BLUR * 0.5);
        tex = tex * 0.4 + (SampleLocation(tubeUV + blurStep).rgb + SampleLocation(tubeUV + float2(-blurStep.x, blurStep.y)).rgb + SampleLocation(tubeUV + float2(blurStep.x, -blurStep.y)).rgb + SampleLocation(tubeUV - blurStep).rgb) * 0.15;
    }

    // Scanlines & Mask
    float scanline = lerp(1.0, fma(fma(0.3 * sin((fma(uv.y, res.y * A_12_SCAN_AMT * PI, (A_13_T_INTERLACE > 0.5) ? frameToggle * PI * A_14_JITTER : 0.0)) * 2.0), 1.0 / 1.3, sin(fma(uv.y, res.y * A_12_SCAN_AMT * PI, (A_13_T_INTERLACE > 0.5) ? frameToggle * PI * A_14_JITTER : 0.0)) / 1.3), 0.5, 0.5), A_11_SCAN_D * fma(-luma, M_09_BEAM_BLOOM, 1.0));
    if (A_13_T_INTERLACE > 0.5) scanline *= lerp(1.0, (frameToggle == mod(floor(uv_raw.y * res.y), 2.0)) ? 1.15 : 0.85, A_14_JITTER);
    scanline *= fma(sin(fma(-time, 2.0, warpedUV.y * 12.0)), A_19_HUM, 1.0);

    float3 msk = float3(1.0);
    float2 moireUV = tubeUV + float2(luma * A_20_SHIVER * 0.012 + sin(time * 2.0) * (1.0 - A_21_SMOOTH) * A_20_SHIVER * 0.003);
    if (A_22_BLOCK > 1.0) moireUV = (floor(moireUV * (res / A_22_BLOCK)) + 0.5) / (res / A_22_BLOCK);
    float2 mC = (moireUV * res) / A_08_MASK_SCALE;

    if (A_07_MASK_TYPE < 0.5) {
        float triplet = mod(mC.x, 3.0);
        msk = (triplet < 1.0) ? float3(1.8, 0.2, 0.2) : ((triplet < 2.0) ? float3(0.2, 1.8, 0.2) : float3(0.2, 0.2, 1.8));
        msk *= smoothstep(0.15, 0.25, fract(fma(mC.y, 0.24, mod(floor(mC.x * 0.33), 2.0) * A_10_STAGGER * 0.5))) * smoothstep(0.85, 0.75, fract(fma(mC.y, 0.24, mod(floor(mC.x * 0.33), 2.0) * A_10_STAGGER * 0.5)));
    } else if (A_07_MASK_TYPE < 1.5) {
        float triplet = mod(mC.x, 3.0);
        msk = (triplet < 1.0) ? float3(1.7, 0.25, 0.25) : ((triplet < 2.0) ? float3(0.25, 1.7, 0.25) : float3(0.25, 0.25, 1.7));
        msk *= fma(sin(mC.y * 0.5), 0.05, 0.95);
    } else if (A_07_MASK_TYPE < 2.5) {
        msk = fma(float3(smoothstep(0.45, 0.35, distance(fract(fma(mC, float2(0.5), float2(mod(floor(mC.y), 2.0) * 0.5, 0.0))), float2(0.5)))), float3(1.7), float3(0.3));
    } else if (A_07_MASK_TYPE < 3.5) {
        float subpix = mod(mC.x, 3.0);
        float3 triColor = (subpix < 1.0) ? float3(1.0, 0.0, 0.0) : ((subpix < 2.0) ? float3(0.0, 1.0, 0.0) : float3(0.0, 0.0, 1.0));
        msk = lerp(float3(0.08), triColor * 1.75 + float3(0.08), smoothstep(0.85, 0.55, length(float2(fract(mC.x / 3.0) * 3.0 - 1.5, fract(mC.y + mod(floor(mC.x / 3.0), 2.0) * 0.5) * 2.0 - 1.0) * float2(0.55, 0.75))));
    } else {
        float stripe = mod(mC.x, 3.0);
        float3 stripeColor = (stripe < 1.0) ? float3(1.75, 0.15, 0.15) : ((stripe < 2.0) ? float3(0.15, 1.75, 0.15) : float3(0.15, 0.15, 1.75));
        msk = lerp(float3(0.05), stripeColor * smoothstep(0.0, 0.25, min(fract(mC.x / 3.0) * 3.0, 3.0 - fract(mC.x / 3.0) * 3.0)), smoothstep(0.0, 0.06, fract(mC.y / 4.0)) * smoothstep(1.0, 0.94, fract(mC.y / 4.0)));
    }

    // Composition & Special FX
    float3 final = tex * lerp(float3(1.0), msk, A_09_PATTERN_STR) * scanline * A_26_INTENS + tex * (A_24_GLOW * 0.4 * luma * (1.0 - distSq));

    if (M_MISC > 0.5) {
        if (M_05_SCATTER > 0.0) final += luma * (0.1 * M_05_SCATTER) * float3(0.8, 0.9, 1.0);
        if (M_02_RAINBOW > 0.0) final.rb += sin(fma(tubeUV.x * res.x, 0.5, time)) * (0.1 * M_02_RAINBOW) * (1.0 - luma);
        
        // Combined RF Noise & Snow Static
        if (A_18_NOISE > 0.0) {
            final *= fma(hash(tubeUV + time) - 0.5, A_18_NOISE, 1.0);
            final += fma(float3(hash(tubeUV + time) + sin(fma(tubeUV.y, 10.0, time * 5.0)) * 0.1), float3(A_18_NOISE * 0.4), float3(0.0));
        }

        final *= fma(-hash(float2(time, 0.0)) * 0.05, M_11_FLICKER, 1.0);
        final *= fma(-pow(length(tubeOffset) * 1.4, 2.5), M_10_VIGNETTE, 1.0);
        if (M_15_BFI > 0.0) {
            float bfiStrobe = step(0.5, fract(time * 60.0));
            final *= lerp(1.0, 1.0 - bfiStrobe, M_15_BFI * 0.8);
        }
    }


    if (T_TUBEGLASS > 0.5) {
        float2 reflBase = warpedUV;
        if (A_00_FORCE_43 > 0.5) reflBase.x = (reflBase.x - ((1.0 - ((4.0 / 3.0) / (16.0 / 9.0))) * 0.5)) / ((4.0 / 3.0) / (16.0 / 9.0));
        float2 reflUV = reflBase - float2(T_05_POS_X, T_06_POS_Y);

        float spec = (T_03_R_TYPE < 0.5) ? smoothstep(0.45, 0.0, length((reflUV - float2(0.18, 0.22)) * float2(1.0, 0.8))) : ((T_03_R_TYPE < 1.5) ? smoothstep(0.55, 0.0, distance(reflUV, float2(0.25, 0.5))) * smoothstep(0.02, 0.06, abs(reflUV.x - 0.25)) : smoothstep(0.28, 0.0, abs(reflUV.y - 0.15)) * smoothstep(0.55, 0.0, abs(reflUV.x - 0.5)));
        if (T_04_WEAR > 0.0) spec *= fma(-hash(tubeUV * 15.0), T_04_WEAR, 1.0);

        final += (spec * T_02_SHINE * fma(-luma, 0.5, 1.1) * float3(0.9, 0.95, 1.0)) * step(d_game, 0.0);

        if (T_08_TINT_STR > 0.0) {
            float3 tintColor = (T_07_TINT < 0.5) ? float3(1.0) : ((T_07_TINT < 1.5) ? float3(0.88, 0.90, 0.88) : ((T_07_TINT < 2.5) ? float3(0.85, 0.92, 0.84) : float3(0.84, 0.88, 0.95)));
            final *= lerp(float3(1.0), tintColor, T_08_TINT_STR);
        }

        if (T_09_DUST > 0.0) {
            float dustLayer = valueNoise(warpedUV * 8.0) * 0.72 + valueNoise(warpedUV * 40.0) * 0.28;
            final *= lerp(float3(1.0), float3(1.0 + dustLayer * 0.18, 1.0 + dustLayer * 0.14, 1.0 + dustLayer * 0.07), T_09_DUST);
        }
    }

    if (B_BEZEL > 0.5) final *= fma(-smoothstep(-0.05, 0.0, d_game) * B_05_BEZEL_SHADOW, 0.8, 1.0);

    // Difference Check Split Screen Comparison
    if (DIFF_TAB > 0.5 && D_01_SPLIT > 0.0) {
        float splitX = D_01_SPLIT;
        if (abs(uv_raw.x - splitX) < (1.5 * invRes.x)) {
            final = float3(1.0, 1.0, 1.0); // White vertical split line
        } else if (uv_raw.x < splitX) {
            float2 cleanUV = uv_raw;
            if (A_00_FORCE_43 > 0.5) {
                float activeWidth  = (4.0 / 3.0) / (16.0 / 9.0);
                float pillarMargin = (1.0 - activeWidth) * 0.5;
                if (cleanUV.x >= pillarMargin && cleanUV.x <= (1.0 - pillarMargin)) {
                    cleanUV.x = (cleanUV.x - pillarMargin) / activeWidth;
                    final = SampleLocation(cleanUV).rgb;
                } else {
                    final = float3(0.0);
                }
            } else {
                final = SampleLocation(cleanUV).rgb;
            }
        }
    }

    SetOutput(float4(max(final, 0.0), 1.0));
}
