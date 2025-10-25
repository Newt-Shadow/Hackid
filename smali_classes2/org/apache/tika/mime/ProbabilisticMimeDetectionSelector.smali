.class public Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/tika/detect/Detector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXTENSION_TRUST:F = 0.8f

.field private static final DEFAULT_MAGIC_TRUST:F = 0.9f

.field private static final DEFAULT_META_TRUST:F = 0.8f

.field private static final serialVersionUID:J = 0x31de74a59e687ccL


# instance fields
.field private final changeRate:F

.field private extension_neg:F

.field private extension_trust:F

.field private magic_neg:F

.field private magic_trust:F

.field private meta_neg:F

.field private meta_trust:F

.field private final mimeTypes:Lorg/apache/tika/mime/MimeTypes;

.field private priorExtensionFileType:F

.field private priorMagicFileType:F

.field private priorMetaFileType:F

.field private final rootMediaType:Lorg/apache/tika/mime/MediaType;

.field private threshold:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/apache/tika/mime/MimeTypes;->getDefaultMimeTypes()Lorg/apache/tika/mime/MimeTypes;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;-><init>(Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/mime/MimeTypes;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;-><init>(Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->mimeTypes:Lorg/apache/tika/mime/MimeTypes;

    .line 6
    sget-object p1, Lorg/apache/tika/mime/MediaType;->OCTET_STREAM:Lorg/apache/tika/mime/MediaType;

    iput-object p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->rootMediaType:Lorg/apache/tika/mime/MediaType;

    .line 7
    invoke-direct {p0}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->initializeDefaultProbabilityParameters()V

    const p1, 0x3dcccccd    # 0.1f

    .line 8
    iput p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->changeRate:F

    if-eqz p2, :cond_a

    .line 9
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->h(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    iget p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->priorMagicFileType:F

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->h(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    :goto_0
    iput p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->priorMagicFileType:F

    .line 11
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->g(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->priorExtensionFileType:F

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->g(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    :goto_1
    iput p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->priorExtensionFileType:F

    .line 13
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->i(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    iget p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->priorMetaFileType:F

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->i(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    :goto_2
    iput p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->priorMetaFileType:F

    .line 14
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->d(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_3

    iget p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->magic_trust:F

    goto :goto_3

    :cond_3
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->a(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    :goto_3
    iput p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->magic_trust:F

    .line 15
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->b(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_4

    iget p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->extension_trust:F

    goto :goto_4

    :cond_4
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->b(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    :goto_4
    iput p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->extension_trust:F

    .line 16
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->f(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_5

    iget p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->meta_trust:F

    goto :goto_5

    :cond_5
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->f(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    :goto_5
    iput p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->meta_trust:F

    .line 17
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->c(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_6

    iget p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->magic_neg:F

    goto :goto_6

    :cond_6
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->c(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    :goto_6
    iput p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->magic_neg:F

    .line 18
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->a(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_7

    iget p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->extension_neg:F

    goto :goto_7

    :cond_7
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->a(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    :goto_7
    iput p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->extension_neg:F

    .line 19
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->e(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_8

    iget p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->meta_neg:F

    goto :goto_8

    :cond_8
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->e(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    :goto_8
    iput p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->meta_neg:F

    .line 20
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->j(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_9

    iget p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->threshold:F

    goto :goto_9

    :cond_9
    invoke-static {p2}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;->j(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)F

    move-result p1

    :goto_9
    iput p1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->threshold:F

    :cond_a
    return-void
.end method

.method public constructor <init>(Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)V
    .locals 1

    .line 2
    invoke-static {}, Lorg/apache/tika/mime/MimeTypes;->getDefaultMimeTypes()Lorg/apache/tika/mime/MimeTypes;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;-><init>(Lorg/apache/tika/mime/MimeTypes;Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector$Builder;)V

    return-void
.end method

.method private applyProbilities(Ljava/util/List;Lorg/apache/tika/mime/MimeType;Lorg/apache/tika/mime/MimeType;)Lorg/apache/tika/mime/MediaType;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/tika/mime/MimeType;",
            ">;",
            "Lorg/apache/tika/mime/MimeType;",
            "Lorg/apache/tika/mime/MimeType;",
            ")",
            "Lorg/apache/tika/mime/MediaType;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    move-object v5, v4

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    :goto_0
    if-nez v3, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    iget v7, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->magic_trust:F

    .line 30
    .line 31
    iget v8, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->magic_neg:F

    .line 32
    .line 33
    iget v9, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->extension_trust:F

    .line 34
    .line 35
    iget v10, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->extension_neg:F

    .line 36
    .line 37
    iget v11, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->meta_trust:F

    .line 38
    .line 39
    iget v12, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->meta_neg:F

    .line 40
    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    iget-object v14, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->rootMediaType:Lorg/apache/tika/mime/MediaType;

    .line 44
    .line 45
    invoke-virtual {v5, v14}, Lorg/apache/tika/mime/MediaType;->compareTo(Lorg/apache/tika/mime/MediaType;)I

    .line 46
    .line 47
    .line 48
    move-result v14

    .line 49
    if-nez v14, :cond_3

    .line 50
    .line 51
    :cond_2
    const/high16 v9, 0x3f800000    # 1.0f

    .line 52
    .line 53
    const/high16 v10, 0x3f800000    # 1.0f

    .line 54
    .line 55
    :cond_3
    if-eqz v4, :cond_4

    .line 56
    .line 57
    iget-object v14, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->rootMediaType:Lorg/apache/tika/mime/MediaType;

    .line 58
    .line 59
    invoke-virtual {v4, v14}, Lorg/apache/tika/mime/MediaType;->compareTo(Lorg/apache/tika/mime/MediaType;)I

    .line 60
    .line 61
    .line 62
    move-result v14

    .line 63
    if-nez v14, :cond_5

    .line 64
    .line 65
    :cond_4
    const/high16 v11, 0x3f800000    # 1.0f

    .line 66
    .line 67
    const/high16 v12, 0x3f800000    # 1.0f

    .line 68
    .line 69
    :cond_5
    iget-object v14, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->rootMediaType:Lorg/apache/tika/mime/MediaType;

    .line 70
    .line 71
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    .line 72
    .line 73
    .line 74
    move-result v15

    .line 75
    const/high16 v16, -0x40800000    # -1.0f

    .line 76
    .line 77
    if-nez v15, :cond_2a

    .line 78
    .line 79
    const/4 v15, 0x0

    .line 80
    :goto_2
    if-ge v15, v6, :cond_29

    .line 81
    .line 82
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v18

    .line 86
    check-cast v18, Lorg/apache/tika/mime/MimeType;

    .line 87
    .line 88
    invoke-virtual/range {v18 .. v18}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    move/from16 v18, v6

    .line 93
    .line 94
    iget-object v6, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->mimeTypes:Lorg/apache/tika/mime/MimeTypes;

    .line 95
    .line 96
    invoke-virtual {v6}, Lorg/apache/tika/mime/MimeTypes;->getMediaTypeRegistry()Lorg/apache/tika/mime/MediaTypeRegistry;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    move/from16 v20, v7

    .line 101
    .line 102
    if-eqz v13, :cond_6

    .line 103
    .line 104
    iget-object v7, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->rootMediaType:Lorg/apache/tika/mime/MediaType;

    .line 105
    .line 106
    invoke-virtual {v13, v7}, Lorg/apache/tika/mime/MediaType;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    if-eqz v7, :cond_6

    .line 111
    .line 112
    const/high16 v7, 0x3f800000    # 1.0f

    .line 113
    .line 114
    const/high16 v8, 0x3f800000    # 1.0f

    .line 115
    .line 116
    goto :goto_7

    .line 117
    :cond_6
    if-eqz v5, :cond_9

    .line 118
    .line 119
    invoke-virtual {v5, v13}, Lorg/apache/tika/mime/MediaType;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    if-nez v7, :cond_8

    .line 124
    .line 125
    invoke-virtual {v6, v5, v13}, Lorg/apache/tika/mime/MediaTypeRegistry;->isSpecializationOf(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_7

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_7
    invoke-virtual {v6, v13, v5}, Lorg/apache/tika/mime/MediaTypeRegistry;->isSpecializationOf(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)Z

    .line 133
    .line 134
    .line 135
    move-result v7

    .line 136
    if-eqz v7, :cond_9

    .line 137
    .line 138
    move-object v5, v13

    .line 139
    goto :goto_4

    .line 140
    :cond_8
    :goto_3
    invoke-interface {v1, v15, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    :cond_9
    :goto_4
    if-eqz v4, :cond_c

    .line 144
    .line 145
    invoke-virtual {v4, v13}, Lorg/apache/tika/mime/MediaType;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-nez v7, :cond_b

    .line 150
    .line 151
    invoke-virtual {v6, v4, v13}, Lorg/apache/tika/mime/MediaTypeRegistry;->isSpecializationOf(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)Z

    .line 152
    .line 153
    .line 154
    move-result v7

    .line 155
    if-eqz v7, :cond_a

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_a
    invoke-virtual {v6, v13, v4}, Lorg/apache/tika/mime/MediaTypeRegistry;->isSpecializationOf(Lorg/apache/tika/mime/MediaType;Lorg/apache/tika/mime/MediaType;)Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    if-eqz v6, :cond_c

    .line 163
    .line 164
    move-object v4, v13

    .line 165
    goto :goto_6

    .line 166
    :cond_b
    :goto_5
    invoke-interface {v1, v15, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    :cond_c
    :goto_6
    move/from16 v7, v20

    .line 170
    .line 171
    :goto_7
    const/4 v6, 0x3

    .line 172
    new-array v13, v6, [F

    .line 173
    .line 174
    new-array v2, v6, [F

    .line 175
    .line 176
    move-object/from16 v20, v14

    .line 177
    .line 178
    new-array v14, v6, [F

    .line 179
    .line 180
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v21

    .line 184
    check-cast v21, Lorg/apache/tika/mime/MimeType;

    .line 185
    .line 186
    invoke-virtual/range {v21 .. v21}, Lorg/apache/tika/mime/MimeType;->getType()Lorg/apache/tika/mime/MediaType;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    if-lez v15, :cond_d

    .line 191
    .line 192
    iget v1, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->changeRate:F

    .line 193
    .line 194
    const/high16 v19, 0x3f800000    # 1.0f

    .line 195
    .line 196
    sub-float v21, v19, v1

    .line 197
    .line 198
    mul-float v7, v7, v21

    .line 199
    .line 200
    add-float v1, v1, v19

    .line 201
    .line 202
    mul-float/2addr v8, v1

    .line 203
    goto :goto_8

    .line 204
    :cond_d
    const/high16 v19, 0x3f800000    # 1.0f

    .line 205
    .line 206
    :goto_8
    const v1, 0x3dcccccd    # 0.1f

    .line 207
    .line 208
    .line 209
    const/16 v21, 0x2

    .line 210
    .line 211
    const/16 v22, 0x1

    .line 212
    .line 213
    if-eqz v6, :cond_12

    .line 214
    .line 215
    cmpl-float v23, v7, v19

    .line 216
    .line 217
    if-eqz v23, :cond_12

    .line 218
    .line 219
    const/16 v17, 0x0

    .line 220
    .line 221
    aput v7, v2, v17

    .line 222
    .line 223
    aput v8, v14, v17

    .line 224
    .line 225
    if-eqz v4, :cond_f

    .line 226
    .line 227
    cmpl-float v23, v11, v19

    .line 228
    .line 229
    if-eqz v23, :cond_f

    .line 230
    .line 231
    invoke-virtual {v6, v4}, Lorg/apache/tika/mime/MediaType;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v23

    .line 235
    if-eqz v23, :cond_e

    .line 236
    .line 237
    aput v11, v2, v22

    .line 238
    .line 239
    aput v12, v14, v22

    .line 240
    .line 241
    goto :goto_9

    .line 242
    :cond_e
    sub-float v23, v19, v11

    .line 243
    .line 244
    aput v23, v2, v22

    .line 245
    .line 246
    sub-float v23, v19, v12

    .line 247
    .line 248
    aput v23, v14, v22

    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_f
    aput v19, v2, v22

    .line 252
    .line 253
    aput v19, v14, v22

    .line 254
    .line 255
    :goto_9
    if-eqz v5, :cond_11

    .line 256
    .line 257
    cmpl-float v23, v9, v19

    .line 258
    .line 259
    if-eqz v23, :cond_11

    .line 260
    .line 261
    invoke-virtual {v6, v5}, Lorg/apache/tika/mime/MediaType;->equals(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-result v23

    .line 265
    if-eqz v23, :cond_10

    .line 266
    .line 267
    aput v9, v2, v21

    .line 268
    .line 269
    aput v10, v14, v21

    .line 270
    .line 271
    goto :goto_a

    .line 272
    :cond_10
    sub-float v23, v19, v9

    .line 273
    .line 274
    aput v23, v2, v21

    .line 275
    .line 276
    sub-float v23, v19, v10

    .line 277
    .line 278
    aput v23, v14, v21

    .line 279
    .line 280
    goto :goto_a

    .line 281
    :cond_11
    aput v19, v2, v21

    .line 282
    .line 283
    aput v19, v14, v21

    .line 284
    .line 285
    goto :goto_a

    .line 286
    :cond_12
    const/16 v17, 0x0

    .line 287
    .line 288
    aput v1, v13, v17

    .line 289
    .line 290
    :goto_a
    move/from16 v24, v15

    .line 291
    .line 292
    const/4 v1, 0x3

    .line 293
    new-array v15, v1, [F

    .line 294
    .line 295
    move-object/from16 v25, v14

    .line 296
    .line 297
    new-array v14, v1, [F

    .line 298
    .line 299
    if-eqz v3, :cond_17

    .line 300
    .line 301
    cmpl-float v1, v11, v19

    .line 302
    .line 303
    if-eqz v1, :cond_17

    .line 304
    .line 305
    aput v11, v15, v22

    .line 306
    .line 307
    aput v12, v14, v22

    .line 308
    .line 309
    if-eqz v6, :cond_14

    .line 310
    .line 311
    cmpl-float v1, v7, v19

    .line 312
    .line 313
    if-eqz v1, :cond_14

    .line 314
    .line 315
    invoke-virtual {v4, v6}, Lorg/apache/tika/mime/MediaType;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-eqz v1, :cond_13

    .line 320
    .line 321
    const/4 v1, 0x0

    .line 322
    aput v7, v15, v1

    .line 323
    .line 324
    aput v8, v14, v1

    .line 325
    .line 326
    goto :goto_b

    .line 327
    :cond_13
    const/4 v1, 0x0

    .line 328
    sub-float v17, v19, v7

    .line 329
    .line 330
    aput v17, v15, v1

    .line 331
    .line 332
    sub-float v17, v19, v8

    .line 333
    .line 334
    aput v17, v14, v1

    .line 335
    .line 336
    goto :goto_b

    .line 337
    :cond_14
    const/4 v1, 0x0

    .line 338
    aput v19, v15, v1

    .line 339
    .line 340
    aput v19, v14, v1

    .line 341
    .line 342
    :goto_b
    if-eqz v5, :cond_16

    .line 343
    .line 344
    cmpl-float v1, v9, v19

    .line 345
    .line 346
    if-eqz v1, :cond_16

    .line 347
    .line 348
    invoke-virtual {v4, v5}, Lorg/apache/tika/mime/MediaType;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result v1

    .line 352
    if-eqz v1, :cond_15

    .line 353
    .line 354
    aput v9, v15, v21

    .line 355
    .line 356
    aput v10, v14, v21

    .line 357
    .line 358
    goto :goto_c

    .line 359
    :cond_15
    sub-float v1, v19, v9

    .line 360
    .line 361
    aput v1, v15, v21

    .line 362
    .line 363
    sub-float v1, v19, v10

    .line 364
    .line 365
    aput v1, v14, v21

    .line 366
    .line 367
    goto :goto_c

    .line 368
    :cond_16
    aput v19, v15, v21

    .line 369
    .line 370
    aput v19, v14, v21

    .line 371
    .line 372
    goto :goto_c

    .line 373
    :cond_17
    const v1, 0x3dcccccd    # 0.1f

    .line 374
    .line 375
    .line 376
    aput v1, v13, v22

    .line 377
    .line 378
    :goto_c
    const/4 v1, 0x3

    .line 379
    new-array v3, v1, [F

    .line 380
    .line 381
    move-object/from16 v26, v14

    .line 382
    .line 383
    new-array v14, v1, [F

    .line 384
    .line 385
    if-eqz v5, :cond_1c

    .line 386
    .line 387
    cmpl-float v1, v9, v19

    .line 388
    .line 389
    if-eqz v1, :cond_1c

    .line 390
    .line 391
    aput v9, v3, v21

    .line 392
    .line 393
    aput v10, v14, v21

    .line 394
    .line 395
    if-eqz v6, :cond_19

    .line 396
    .line 397
    cmpl-float v1, v7, v19

    .line 398
    .line 399
    if-eqz v1, :cond_19

    .line 400
    .line 401
    invoke-virtual {v6, v5}, Lorg/apache/tika/mime/MediaType;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    if-eqz v1, :cond_18

    .line 406
    .line 407
    const/4 v1, 0x0

    .line 408
    aput v7, v3, v1

    .line 409
    .line 410
    aput v8, v14, v1

    .line 411
    .line 412
    goto :goto_d

    .line 413
    :cond_18
    const/4 v1, 0x0

    .line 414
    sub-float v17, v19, v7

    .line 415
    .line 416
    aput v17, v3, v1

    .line 417
    .line 418
    sub-float v17, v19, v8

    .line 419
    .line 420
    aput v17, v14, v1

    .line 421
    .line 422
    goto :goto_d

    .line 423
    :cond_19
    const/4 v1, 0x0

    .line 424
    aput v19, v3, v1

    .line 425
    .line 426
    aput v19, v14, v1

    .line 427
    .line 428
    :goto_d
    if-eqz v4, :cond_1b

    .line 429
    .line 430
    cmpl-float v1, v11, v19

    .line 431
    .line 432
    if-eqz v1, :cond_1b

    .line 433
    .line 434
    invoke-virtual {v4, v5}, Lorg/apache/tika/mime/MediaType;->equals(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-eqz v1, :cond_1a

    .line 439
    .line 440
    aput v11, v3, v22

    .line 441
    .line 442
    aput v12, v14, v22

    .line 443
    .line 444
    goto :goto_e

    .line 445
    :cond_1a
    sub-float v1, v19, v11

    .line 446
    .line 447
    aput v1, v3, v22

    .line 448
    .line 449
    sub-float v1, v19, v12

    .line 450
    .line 451
    aput v1, v14, v22

    .line 452
    .line 453
    goto :goto_e

    .line 454
    :cond_1b
    aput v19, v3, v22

    .line 455
    .line 456
    aput v19, v14, v22

    .line 457
    .line 458
    goto :goto_e

    .line 459
    :cond_1c
    const v1, 0x3dcccccd    # 0.1f

    .line 460
    .line 461
    .line 462
    aput v1, v13, v21

    .line 463
    .line 464
    :goto_e
    iget v1, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->priorMagicFileType:F

    .line 465
    .line 466
    sub-float v23, v19, v1

    .line 467
    .line 468
    const/16 v17, 0x0

    .line 469
    .line 470
    aget v27, v13, v17

    .line 471
    .line 472
    const/16 v28, 0x0

    .line 473
    .line 474
    cmpl-float v27, v27, v28

    .line 475
    .line 476
    if-nez v27, :cond_1f

    .line 477
    .line 478
    move-object/from16 v29, v5

    .line 479
    .line 480
    move/from16 v27, v23

    .line 481
    .line 482
    const/4 v5, 0x3

    .line 483
    move-object/from16 v23, v4

    .line 484
    .line 485
    const/4 v4, 0x0

    .line 486
    :goto_f
    if-ge v4, v5, :cond_1e

    .line 487
    .line 488
    aget v5, v2, v4

    .line 489
    .line 490
    mul-float/2addr v1, v5

    .line 491
    cmpl-float v5, v5, v19

    .line 492
    .line 493
    if-eqz v5, :cond_1d

    .line 494
    .line 495
    aget v5, v25, v4

    .line 496
    .line 497
    mul-float v27, v27, v5

    .line 498
    .line 499
    :cond_1d
    add-int/lit8 v4, v4, 0x1

    .line 500
    .line 501
    const/4 v5, 0x3

    .line 502
    const/high16 v19, 0x3f800000    # 1.0f

    .line 503
    .line 504
    goto :goto_f

    .line 505
    :cond_1e
    add-float v27, v1, v27

    .line 506
    .line 507
    div-float v1, v1, v27

    .line 508
    .line 509
    const/16 v17, 0x0

    .line 510
    .line 511
    aput v1, v13, v17

    .line 512
    .line 513
    goto :goto_10

    .line 514
    :cond_1f
    move-object/from16 v23, v4

    .line 515
    .line 516
    move-object/from16 v29, v5

    .line 517
    .line 518
    const/16 v17, 0x0

    .line 519
    .line 520
    :goto_10
    aget v1, v13, v17

    .line 521
    .line 522
    cmpg-float v2, v16, v1

    .line 523
    .line 524
    if-gez v2, :cond_20

    .line 525
    .line 526
    move/from16 v16, v1

    .line 527
    .line 528
    move-object/from16 v20, v6

    .line 529
    .line 530
    :cond_20
    iget v1, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->priorMetaFileType:F

    .line 531
    .line 532
    const/high16 v2, 0x3f800000    # 1.0f

    .line 533
    .line 534
    sub-float v4, v2, v1

    .line 535
    .line 536
    aget v5, v13, v22

    .line 537
    .line 538
    cmpl-float v5, v5, v28

    .line 539
    .line 540
    if-nez v5, :cond_23

    .line 541
    .line 542
    move/from16 v5, v17

    .line 543
    .line 544
    :goto_11
    const/4 v6, 0x3

    .line 545
    if-ge v5, v6, :cond_22

    .line 546
    .line 547
    aget v6, v15, v5

    .line 548
    .line 549
    mul-float/2addr v1, v6

    .line 550
    cmpl-float v6, v6, v2

    .line 551
    .line 552
    if-eqz v6, :cond_21

    .line 553
    .line 554
    aget v2, v26, v5

    .line 555
    .line 556
    mul-float/2addr v4, v2

    .line 557
    :cond_21
    add-int/lit8 v5, v5, 0x1

    .line 558
    .line 559
    const/high16 v2, 0x3f800000    # 1.0f

    .line 560
    .line 561
    goto :goto_11

    .line 562
    :cond_22
    add-float/2addr v4, v1

    .line 563
    div-float/2addr v1, v4

    .line 564
    aput v1, v13, v22

    .line 565
    .line 566
    :cond_23
    aget v1, v13, v22

    .line 567
    .line 568
    cmpg-float v2, v16, v1

    .line 569
    .line 570
    if-gez v2, :cond_24

    .line 571
    .line 572
    move/from16 v16, v1

    .line 573
    .line 574
    move-object/from16 v20, v23

    .line 575
    .line 576
    :cond_24
    iget v1, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->priorExtensionFileType:F

    .line 577
    .line 578
    const/high16 v2, 0x3f800000    # 1.0f

    .line 579
    .line 580
    sub-float v4, v2, v1

    .line 581
    .line 582
    aget v5, v13, v21

    .line 583
    .line 584
    cmpl-float v5, v5, v28

    .line 585
    .line 586
    if-nez v5, :cond_27

    .line 587
    .line 588
    move/from16 v5, v17

    .line 589
    .line 590
    const/4 v6, 0x3

    .line 591
    :goto_12
    if-ge v5, v6, :cond_26

    .line 592
    .line 593
    aget v15, v3, v5

    .line 594
    .line 595
    mul-float/2addr v1, v15

    .line 596
    cmpl-float v15, v15, v2

    .line 597
    .line 598
    if-eqz v15, :cond_25

    .line 599
    .line 600
    aget v15, v14, v5

    .line 601
    .line 602
    mul-float/2addr v4, v15

    .line 603
    :cond_25
    add-int/lit8 v5, v5, 0x1

    .line 604
    .line 605
    goto :goto_12

    .line 606
    :cond_26
    add-float/2addr v4, v1

    .line 607
    div-float/2addr v1, v4

    .line 608
    aput v1, v13, v21

    .line 609
    .line 610
    :cond_27
    aget v1, v13, v21

    .line 611
    .line 612
    cmpg-float v3, v16, v1

    .line 613
    .line 614
    if-gez v3, :cond_28

    .line 615
    .line 616
    move/from16 v16, v1

    .line 617
    .line 618
    move-object/from16 v14, v29

    .line 619
    .line 620
    goto :goto_13

    .line 621
    :cond_28
    move-object/from16 v14, v20

    .line 622
    .line 623
    :goto_13
    add-int/lit8 v15, v24, 0x1

    .line 624
    .line 625
    move-object/from16 v1, p1

    .line 626
    .line 627
    move-object/from16 v2, p2

    .line 628
    .line 629
    move-object/from16 v3, p3

    .line 630
    .line 631
    move/from16 v6, v18

    .line 632
    .line 633
    move-object/from16 v4, v23

    .line 634
    .line 635
    move-object/from16 v5, v29

    .line 636
    .line 637
    goto/16 :goto_2

    .line 638
    .line 639
    :cond_29
    move-object/from16 v20, v14

    .line 640
    .line 641
    :cond_2a
    iget v1, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->threshold:F

    .line 642
    .line 643
    cmpg-float v1, v16, v1

    .line 644
    .line 645
    if-gez v1, :cond_2b

    .line 646
    .line 647
    iget-object v14, v0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->rootMediaType:Lorg/apache/tika/mime/MediaType;

    .line 648
    .line 649
    :cond_2b
    return-object v14
.end method

.method private initializeDefaultProbabilityParameters()V
    .locals 1

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    iput v0, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->priorMagicFileType:F

    .line 4
    .line 5
    iput v0, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->priorExtensionFileType:F

    .line 6
    .line 7
    iput v0, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->priorMetaFileType:F

    .line 8
    .line 9
    const v0, 0x3f666666    # 0.9f

    .line 10
    .line 11
    .line 12
    iput v0, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->magic_trust:F

    .line 13
    .line 14
    const v0, 0x3f4ccccd    # 0.8f

    .line 15
    .line 16
    .line 17
    iput v0, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->extension_trust:F

    .line 18
    .line 19
    iput v0, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->meta_trust:F

    .line 20
    .line 21
    const v0, 0x3dccccd0    # 0.100000024f

    .line 22
    .line 23
    .line 24
    iput v0, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->magic_neg:F

    .line 25
    .line 26
    const v0, 0x3e4ccccc    # 0.19999999f

    .line 27
    .line 28
    .line 29
    iput v0, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->extension_neg:F

    .line 30
    .line 31
    iput v0, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->meta_neg:F

    .line 32
    .line 33
    const v0, 0x3f00068e    # 0.5001f

    .line 34
    .line 35
    .line 36
    iput v0, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->threshold:F

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public detect(Ljava/io/InputStream;Lorg/apache/tika/metadata/Metadata;)Lorg/apache/tika/mime/MediaType;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->mimeTypes:Lorg/apache/tika/mime/MimeTypes;

    .line 9
    .line 10
    invoke-virtual {v1}, Lorg/apache/tika/mime/MimeTypes;->getMinLength()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->mark(I)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object v1, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->mimeTypes:Lorg/apache/tika/mime/MimeTypes;

    .line 18
    .line 19
    invoke-virtual {v1, p1}, Lorg/apache/tika/mime/MimeTypes;->readMagicHeader(Ljava/io/InputStream;)[B

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->mimeTypes:Lorg/apache/tika/mime/MimeTypes;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Lorg/apache/tika/mime/MimeTypes;->getMimeType([B)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p2

    .line 37
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 38
    .line 39
    .line 40
    throw p2

    .line 41
    :cond_0
    :goto_0
    const-string p1, "resourceName"

    .line 42
    .line 43
    invoke-virtual {p2, p1}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 v1, 0x0

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    :try_start_1
    new-instance v2, Ljava/net/URI;

    .line 51
    .line 52
    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    const/16 v3, 0x2f

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-ge v3, v4, :cond_1

    .line 74
    .line 75
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    move-object p1, v1

    .line 81
    :catch_0
    :goto_1
    if-eqz p1, :cond_2

    .line 82
    .line 83
    iget-object v2, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->mimeTypes:Lorg/apache/tika/mime/MimeTypes;

    .line 84
    .line 85
    invoke-virtual {v2, p1}, Lorg/apache/tika/mime/MimeTypes;->getMimeType(Ljava/lang/String;)Lorg/apache/tika/mime/MimeType;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    goto :goto_2

    .line 90
    :cond_2
    move-object p1, v1

    .line 91
    :goto_2
    const-string v2, "Content-Type"

    .line 92
    .line 93
    invoke-virtual {p2, v2}, Lorg/apache/tika/metadata/Metadata;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    if-eqz p2, :cond_3

    .line 98
    .line 99
    :try_start_2
    iget-object v2, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->mimeTypes:Lorg/apache/tika/mime/MimeTypes;

    .line 100
    .line 101
    invoke-virtual {v2, p2}, Lorg/apache/tika/mime/MimeTypes;->forName(Ljava/lang/String;)Lorg/apache/tika/mime/MimeType;

    .line 102
    .line 103
    .line 104
    move-result-object v1
    :try_end_2
    .catch Lorg/apache/tika/mime/MimeTypeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 105
    :catch_1
    :cond_3
    invoke-direct {p0, v0, p1, v1}, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->applyProbilities(Ljava/util/List;Lorg/apache/tika/mime/MimeType;Lorg/apache/tika/mime/MimeType;)Lorg/apache/tika/mime/MediaType;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    return-object p1
.end method

.method public getMediaTypeRegistry()Lorg/apache/tika/mime/MediaTypeRegistry;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/tika/mime/ProbabilisticMimeDetectionSelector;->mimeTypes:Lorg/apache/tika/mime/MimeTypes;

    .line 2
    .line 3
    invoke-virtual {v0}, Lorg/apache/tika/mime/MimeTypes;->getMediaTypeRegistry()Lorg/apache/tika/mime/MediaTypeRegistry;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
