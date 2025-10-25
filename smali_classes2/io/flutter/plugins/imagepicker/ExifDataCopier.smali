.class Lio/flutter/plugins/imagepicker/ExifDataCopier;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static setIfNotNull(Landroidx/exifinterface/media/a;Landroidx/exifinterface/media/a;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Landroidx/exifinterface/media/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Landroidx/exifinterface/media/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p1, p2, p0}, Landroidx/exifinterface/media/a;->T(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method copyExif(Landroidx/exifinterface/media/a;Landroidx/exifinterface/media/a;)V
    .locals 105

    .line 1
    const-string v0, "ImageDescription"

    .line 2
    .line 3
    const-string v1, "Make"

    .line 4
    .line 5
    const-string v2, "Model"

    .line 6
    .line 7
    const-string v3, "Software"

    .line 8
    .line 9
    const-string v4, "DateTime"

    .line 10
    .line 11
    const-string v5, "Artist"

    .line 12
    .line 13
    const-string v6, "Copyright"

    .line 14
    .line 15
    const-string v7, "ExposureTime"

    .line 16
    .line 17
    const-string v8, "FNumber"

    .line 18
    .line 19
    const-string v9, "ExposureProgram"

    .line 20
    .line 21
    const-string v10, "SpectralSensitivity"

    .line 22
    .line 23
    const-string v11, "PhotographicSensitivity"

    .line 24
    .line 25
    const-string v12, "ISOSpeedRatings"

    .line 26
    .line 27
    const-string v13, "OECF"

    .line 28
    .line 29
    const-string v14, "SensitivityType"

    .line 30
    .line 31
    const-string v15, "StandardOutputSensitivity"

    .line 32
    .line 33
    const-string v16, "RecommendedExposureIndex"

    .line 34
    .line 35
    const-string v17, "ISOSpeed"

    .line 36
    .line 37
    const-string v18, "ISOSpeedLatitudeyyy"

    .line 38
    .line 39
    const-string v19, "ISOSpeedLatitudezzz"

    .line 40
    .line 41
    const-string v20, "ExifVersion"

    .line 42
    .line 43
    const-string v21, "DateTimeOriginal"

    .line 44
    .line 45
    const-string v22, "DateTimeDigitized"

    .line 46
    .line 47
    const-string v23, "OffsetTime"

    .line 48
    .line 49
    const-string v24, "OffsetTimeOriginal"

    .line 50
    .line 51
    const-string v25, "OffsetTimeDigitized"

    .line 52
    .line 53
    const-string v26, "ShutterSpeedValue"

    .line 54
    .line 55
    const-string v27, "ApertureValue"

    .line 56
    .line 57
    const-string v28, "BrightnessValue"

    .line 58
    .line 59
    const-string v29, "ExposureBiasValue"

    .line 60
    .line 61
    const-string v30, "MaxApertureValue"

    .line 62
    .line 63
    const-string v31, "SubjectDistance"

    .line 64
    .line 65
    const-string v32, "MeteringMode"

    .line 66
    .line 67
    const-string v33, "LightSource"

    .line 68
    .line 69
    const-string v34, "Flash"

    .line 70
    .line 71
    const-string v35, "FocalLength"

    .line 72
    .line 73
    const-string v36, "MakerNote"

    .line 74
    .line 75
    const-string v37, "UserComment"

    .line 76
    .line 77
    const-string v38, "SubSecTime"

    .line 78
    .line 79
    const-string v39, "SubSecTimeOriginal"

    .line 80
    .line 81
    const-string v40, "SubSecTimeDigitized"

    .line 82
    .line 83
    const-string v41, "FlashpixVersion"

    .line 84
    .line 85
    const-string v42, "FlashEnergy"

    .line 86
    .line 87
    const-string v43, "SpatialFrequencyResponse"

    .line 88
    .line 89
    const-string v44, "FocalPlaneXResolution"

    .line 90
    .line 91
    const-string v45, "FocalPlaneYResolution"

    .line 92
    .line 93
    const-string v46, "FocalPlaneResolutionUnit"

    .line 94
    .line 95
    const-string v47, "ExposureIndex"

    .line 96
    .line 97
    const-string v48, "SensingMethod"

    .line 98
    .line 99
    const-string v49, "FileSource"

    .line 100
    .line 101
    const-string v50, "SceneType"

    .line 102
    .line 103
    const-string v51, "CFAPattern"

    .line 104
    .line 105
    const-string v52, "CustomRendered"

    .line 106
    .line 107
    const-string v53, "ExposureMode"

    .line 108
    .line 109
    const-string v54, "WhiteBalance"

    .line 110
    .line 111
    const-string v55, "DigitalZoomRatio"

    .line 112
    .line 113
    const-string v56, "FocalLengthIn35mmFilm"

    .line 114
    .line 115
    const-string v57, "SceneCaptureType"

    .line 116
    .line 117
    const-string v58, "GainControl"

    .line 118
    .line 119
    const-string v59, "Contrast"

    .line 120
    .line 121
    const-string v60, "Saturation"

    .line 122
    .line 123
    const-string v61, "Sharpness"

    .line 124
    .line 125
    const-string v62, "DeviceSettingDescription"

    .line 126
    .line 127
    const-string v63, "SubjectDistanceRange"

    .line 128
    .line 129
    const-string v64, "ImageUniqueID"

    .line 130
    .line 131
    const-string v65, "CameraOwnerName"

    .line 132
    .line 133
    const-string v66, "BodySerialNumber"

    .line 134
    .line 135
    const-string v67, "LensSpecification"

    .line 136
    .line 137
    const-string v68, "LensMake"

    .line 138
    .line 139
    const-string v69, "LensModel"

    .line 140
    .line 141
    const-string v70, "LensSerialNumber"

    .line 142
    .line 143
    const-string v71, "GPSVersionID"

    .line 144
    .line 145
    const-string v72, "GPSLatitudeRef"

    .line 146
    .line 147
    const-string v73, "GPSLatitude"

    .line 148
    .line 149
    const-string v74, "GPSLongitudeRef"

    .line 150
    .line 151
    const-string v75, "GPSLongitude"

    .line 152
    .line 153
    const-string v76, "GPSAltitudeRef"

    .line 154
    .line 155
    const-string v77, "GPSAltitude"

    .line 156
    .line 157
    const-string v78, "GPSTimeStamp"

    .line 158
    .line 159
    const-string v79, "GPSSatellites"

    .line 160
    .line 161
    const-string v80, "GPSStatus"

    .line 162
    .line 163
    const-string v81, "GPSMeasureMode"

    .line 164
    .line 165
    const-string v82, "GPSDOP"

    .line 166
    .line 167
    const-string v83, "GPSSpeedRef"

    .line 168
    .line 169
    const-string v84, "GPSSpeed"

    .line 170
    .line 171
    const-string v85, "GPSTrackRef"

    .line 172
    .line 173
    const-string v86, "GPSTrack"

    .line 174
    .line 175
    const-string v87, "GPSImgDirectionRef"

    .line 176
    .line 177
    const-string v88, "GPSImgDirection"

    .line 178
    .line 179
    const-string v89, "GPSMapDatum"

    .line 180
    .line 181
    const-string v90, "GPSDestLatitudeRef"

    .line 182
    .line 183
    const-string v91, "GPSDestLatitude"

    .line 184
    .line 185
    const-string v92, "GPSDestLongitudeRef"

    .line 186
    .line 187
    const-string v93, "GPSDestLongitude"

    .line 188
    .line 189
    const-string v94, "GPSDestBearingRef"

    .line 190
    .line 191
    const-string v95, "GPSDestBearing"

    .line 192
    .line 193
    const-string v96, "GPSDestDistanceRef"

    .line 194
    .line 195
    const-string v97, "GPSDestDistance"

    .line 196
    .line 197
    const-string v98, "GPSProcessingMethod"

    .line 198
    .line 199
    const-string v99, "GPSAreaInformation"

    .line 200
    .line 201
    const-string v100, "GPSDateStamp"

    .line 202
    .line 203
    const-string v101, "GPSDifferential"

    .line 204
    .line 205
    const-string v102, "GPSHPositioningError"

    .line 206
    .line 207
    const-string v103, "InteroperabilityIndex"

    .line 208
    .line 209
    const-string v104, "Orientation"

    .line 210
    .line 211
    filled-new-array/range {v0 .. v104}, [Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    if-eqz v1, :cond_0

    .line 228
    .line 229
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    check-cast v1, Ljava/lang/String;

    .line 234
    .line 235
    move-object/from16 v2, p1

    .line 236
    .line 237
    move-object/from16 v3, p2

    .line 238
    .line 239
    invoke-static {v2, v3, v1}, Lio/flutter/plugins/imagepicker/ExifDataCopier;->setIfNotNull(Landroidx/exifinterface/media/a;Landroidx/exifinterface/media/a;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_0
    move-object/from16 v3, p2

    .line 244
    .line 245
    invoke-virtual/range {p2 .. p2}, Landroidx/exifinterface/media/a;->P()V

    .line 246
    .line 247
    .line 248
    return-void
.end method
