.class public Lio/flutter/embedding/android/KeyEmbedderResponder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/flutter/embedding/android/KeyboardManager$Responder;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyEmbedderResponder"


# instance fields
.field private final characterCombiner:Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;

.field private final messenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private final pressingRecords:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final togglingGoals:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->pressingRecords:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->togglingGoals:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;

    .line 19
    .line 20
    invoke-direct {v0}, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->characterCombiner:Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;

    .line 24
    .line 25
    iput-object p1, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 26
    .line 27
    invoke-static {}, Lio/flutter/embedding/android/KeyboardMap;->getTogglingGoals()[Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    array-length v0, p1

    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_0
    if-ge v1, v0, :cond_0

    .line 34
    .line 35
    aget-object v2, p1, v1

    .line 36
    .line 37
    iget-object v3, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->togglingGoals:Ljava/util/HashMap;

    .line 38
    .line 39
    iget-wide v4, v2, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->logicalKey:J

    .line 40
    .line 41
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public static synthetic a(Lio/flutter/embedding/android/KeyEmbedderResponder;Lio/flutter/embedding/android/KeyboardMap$KeyPair;JLandroid/view/KeyEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/flutter/embedding/android/KeyEmbedderResponder;->lambda$synchronizePressingKey$1(Lio/flutter/embedding/android/KeyboardMap$KeyPair;JLandroid/view/KeyEvent;)V

    return-void
.end method

.method public static synthetic b(Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/flutter/embedding/android/KeyEmbedderResponder;->lambda$sendKeyEvent$2(Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static synthetic c(Lio/flutter/embedding/android/KeyEmbedderResponder;Lio/flutter/embedding/android/KeyboardMap$KeyPair;JLandroid/view/KeyEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/flutter/embedding/android/KeyEmbedderResponder;->lambda$synchronizePressingKey$0(Lio/flutter/embedding/android/KeyboardMap$KeyPair;JLandroid/view/KeyEvent;)V

    return-void
.end method

.method private static getEventType(Landroid/view/KeyEvent;)Lio/flutter/embedding/android/KeyData$Type;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_2

    .line 16
    .line 17
    if-ne p0, v1, :cond_1

    .line 18
    .line 19
    sget-object p0, Lio/flutter/embedding/android/KeyData$Type;->kUp:Lio/flutter/embedding/android/KeyData$Type;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    .line 23
    .line 24
    const-string v0, "Unexpected event type"

    .line 25
    .line 26
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    throw p0

    .line 30
    :cond_2
    if-eqz v0, :cond_3

    .line 31
    .line 32
    sget-object p0, Lio/flutter/embedding/android/KeyData$Type;->kRepeat:Lio/flutter/embedding/android/KeyData$Type;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    sget-object p0, Lio/flutter/embedding/android/KeyData$Type;->kDown:Lio/flutter/embedding/android/KeyData$Type;

    .line 36
    .line 37
    :goto_1
    return-object p0
.end method

.method private getLogicalKey(Landroid/view/KeyEvent;)Ljava/lang/Long;
    .locals 4

    .line 1
    sget-object v0, Lio/flutter/embedding/android/KeyboardMap;->keyCodeToLogical:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-long v1, v1

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Long;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    int-to-long v0, p1

    .line 26
    const-wide v2, 0x1100000000L

    .line 27
    .line 28
    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1, v2, v3}, Lio/flutter/embedding/android/KeyEmbedderResponder;->keyOfPlane(JJ)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method private getPhysicalKey(Landroid/view/KeyEvent;)Ljava/lang/Long;
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    const-wide v3, 0x1100000000L

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    int-to-long v0, p1

    .line 22
    invoke-static {v0, v1, v3, v4}, Lio/flutter/embedding/android/KeyEmbedderResponder;->keyOfPlane(JJ)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_0
    sget-object v2, Lio/flutter/embedding/android/KeyboardMap;->scanCodeToPhysical:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Long;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    int-to-long v0, p1

    .line 51
    invoke-static {v0, v1, v3, v4}, Lio/flutter/embedding/android/KeyEmbedderResponder;->keyOfPlane(JJ)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method private handleEventImpl(Landroid/view/KeyEvent;Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)Z
    .locals 17

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getScanCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v10, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return v10

    .line 17
    :cond_0
    invoke-direct/range {p0 .. p1}, Lio/flutter/embedding/android/KeyEmbedderResponder;->getPhysicalKey(Landroid/view/KeyEvent;)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object v11

    .line 21
    invoke-direct/range {p0 .. p1}, Lio/flutter/embedding/android/KeyEmbedderResponder;->getLogicalKey(Landroid/view/KeyEvent;)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v12

    .line 25
    new-instance v13, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    sget-object v14, Lio/flutter/embedding/android/KeyboardMap;->pressingGoals:[Lio/flutter/embedding/android/KeyboardMap$PressingGoal;

    .line 31
    .line 32
    array-length v15, v14

    .line 33
    move v8, v10

    .line 34
    :goto_0
    const/4 v6, 0x1

    .line 35
    if-ge v8, v15, :cond_2

    .line 36
    .line 37
    aget-object v1, v14, v8

    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget v2, v1, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->mask:I

    .line 44
    .line 45
    and-int/2addr v0, v2

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    move v2, v6

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v2, v10

    .line 51
    :goto_1
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 52
    .line 53
    .line 54
    move-result-wide v3

    .line 55
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v5

    .line 59
    move-object/from16 v0, p0

    .line 60
    .line 61
    move-object/from16 v7, p1

    .line 62
    .line 63
    move/from16 v16, v8

    .line 64
    .line 65
    move-object v8, v13

    .line 66
    invoke-virtual/range {v0 .. v8}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synchronizePressingKey(Lio/flutter/embedding/android/KeyboardMap$PressingGoal;ZJJLandroid/view/KeyEvent;Ljava/util/ArrayList;)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v8, v16, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object v0, v9, Lio/flutter/embedding/android/KeyEmbedderResponder;->togglingGoals:Ljava/util/HashMap;

    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    move-object v1, v0

    .line 93
    check-cast v1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;

    .line 94
    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getMetaState()I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    iget v2, v1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->mask:I

    .line 100
    .line 101
    and-int/2addr v0, v2

    .line 102
    if-eqz v0, :cond_3

    .line 103
    .line 104
    move v2, v6

    .line 105
    goto :goto_3

    .line 106
    :cond_3
    move v2, v10

    .line 107
    :goto_3
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 108
    .line 109
    .line 110
    move-result-wide v3

    .line 111
    move-object/from16 v0, p0

    .line 112
    .line 113
    move-object/from16 v5, p1

    .line 114
    .line 115
    invoke-virtual/range {v0 .. v5}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synchronizeTogglingKey(Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;ZJLandroid/view/KeyEvent;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_6

    .line 124
    .line 125
    if-eq v0, v6, :cond_5

    .line 126
    .line 127
    return v10

    .line 128
    :cond_5
    move v7, v10

    .line 129
    goto :goto_4

    .line 130
    :cond_6
    move v7, v6

    .line 131
    :goto_4
    iget-object v0, v9, Lio/flutter/embedding/android/KeyEmbedderResponder;->pressingRecords:Ljava/util/HashMap;

    .line 132
    .line 133
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    move-object v2, v0

    .line 138
    check-cast v2, Ljava/lang/Long;

    .line 139
    .line 140
    const/4 v8, 0x0

    .line 141
    if-eqz v7, :cond_9

    .line 142
    .line 143
    if-nez v2, :cond_7

    .line 144
    .line 145
    sget-object v0, Lio/flutter/embedding/android/KeyData$Type;->kDown:Lio/flutter/embedding/android/KeyData$Type;

    .line 146
    .line 147
    goto :goto_5

    .line 148
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-lez v0, :cond_8

    .line 153
    .line 154
    sget-object v0, Lio/flutter/embedding/android/KeyData$Type;->kRepeat:Lio/flutter/embedding/android/KeyData$Type;

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_8
    const/4 v1, 0x0

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 159
    .line 160
    .line 161
    move-result-wide v4

    .line 162
    move-object/from16 v0, p0

    .line 163
    .line 164
    move-object v3, v11

    .line 165
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synthesizeEvent(ZLjava/lang/Long;Ljava/lang/Long;J)V

    .line 166
    .line 167
    .line 168
    sget-object v0, Lio/flutter/embedding/android/KeyData$Type;->kDown:Lio/flutter/embedding/android/KeyData$Type;

    .line 169
    .line 170
    :goto_5
    iget-object v1, v9, Lio/flutter/embedding/android/KeyEmbedderResponder;->characterCombiner:Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;

    .line 171
    .line 172
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    invoke-virtual {v1, v2}, Lio/flutter/embedding/android/KeyboardManager$CharacterCombiner;->applyCombiningCharacterToBaseCharacter(I)Ljava/lang/Character;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-eqz v1, :cond_b

    .line 185
    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v3, ""

    .line 192
    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    goto :goto_6

    .line 204
    :cond_9
    if-nez v2, :cond_a

    .line 205
    .line 206
    return v10

    .line 207
    :cond_a
    sget-object v0, Lio/flutter/embedding/android/KeyData$Type;->kUp:Lio/flutter/embedding/android/KeyData$Type;

    .line 208
    .line 209
    :cond_b
    move-object v1, v8

    .line 210
    :goto_6
    sget-object v2, Lio/flutter/embedding/android/KeyData$Type;->kRepeat:Lio/flutter/embedding/android/KeyData$Type;

    .line 211
    .line 212
    if-eq v0, v2, :cond_d

    .line 213
    .line 214
    if-eqz v7, :cond_c

    .line 215
    .line 216
    move-object v8, v12

    .line 217
    :cond_c
    invoke-virtual {v9, v11, v8}, Lio/flutter/embedding/android/KeyEmbedderResponder;->updatePressingState(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 218
    .line 219
    .line 220
    :cond_d
    sget-object v2, Lio/flutter/embedding/android/KeyData$Type;->kDown:Lio/flutter/embedding/android/KeyData$Type;

    .line 221
    .line 222
    if-ne v0, v2, :cond_e

    .line 223
    .line 224
    iget-object v2, v9, Lio/flutter/embedding/android/KeyEmbedderResponder;->togglingGoals:Ljava/util/HashMap;

    .line 225
    .line 226
    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    check-cast v2, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;

    .line 231
    .line 232
    if-eqz v2, :cond_e

    .line 233
    .line 234
    iget-boolean v3, v2, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->enabled:Z

    .line 235
    .line 236
    xor-int/2addr v3, v6

    .line 237
    iput-boolean v3, v2, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->enabled:Z

    .line 238
    .line 239
    :cond_e
    new-instance v2, Lio/flutter/embedding/android/KeyData;

    .line 240
    .line 241
    invoke-direct {v2}, Lio/flutter/embedding/android/KeyData;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getSource()I

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    const/16 v4, 0x201

    .line 249
    .line 250
    if-eq v3, v4, :cond_12

    .line 251
    .line 252
    const/16 v4, 0x401

    .line 253
    .line 254
    if-eq v3, v4, :cond_11

    .line 255
    .line 256
    const v4, 0x1000010

    .line 257
    .line 258
    .line 259
    if-eq v3, v4, :cond_10

    .line 260
    .line 261
    const v4, 0x2000001

    .line 262
    .line 263
    .line 264
    if-eq v3, v4, :cond_f

    .line 265
    .line 266
    sget-object v3, Lio/flutter/embedding/android/KeyData$DeviceType;->kKeyboard:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 267
    .line 268
    iput-object v3, v2, Lio/flutter/embedding/android/KeyData;->deviceType:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 269
    .line 270
    goto :goto_7

    .line 271
    :cond_f
    sget-object v3, Lio/flutter/embedding/android/KeyData$DeviceType;->kHdmi:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 272
    .line 273
    iput-object v3, v2, Lio/flutter/embedding/android/KeyData;->deviceType:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 274
    .line 275
    goto :goto_7

    .line 276
    :cond_10
    sget-object v3, Lio/flutter/embedding/android/KeyData$DeviceType;->kJoystick:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 277
    .line 278
    iput-object v3, v2, Lio/flutter/embedding/android/KeyData;->deviceType:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 279
    .line 280
    goto :goto_7

    .line 281
    :cond_11
    sget-object v3, Lio/flutter/embedding/android/KeyData$DeviceType;->kGamepad:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 282
    .line 283
    iput-object v3, v2, Lio/flutter/embedding/android/KeyData;->deviceType:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_12
    sget-object v3, Lio/flutter/embedding/android/KeyData$DeviceType;->kDirectionalPad:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 287
    .line 288
    iput-object v3, v2, Lio/flutter/embedding/android/KeyData;->deviceType:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 289
    .line 290
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    .line 291
    .line 292
    .line 293
    move-result-wide v3

    .line 294
    iput-wide v3, v2, Lio/flutter/embedding/android/KeyData;->timestamp:J

    .line 295
    .line 296
    iput-object v0, v2, Lio/flutter/embedding/android/KeyData;->type:Lio/flutter/embedding/android/KeyData$Type;

    .line 297
    .line 298
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    .line 299
    .line 300
    .line 301
    move-result-wide v3

    .line 302
    iput-wide v3, v2, Lio/flutter/embedding/android/KeyData;->logicalKey:J

    .line 303
    .line 304
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 305
    .line 306
    .line 307
    move-result-wide v3

    .line 308
    iput-wide v3, v2, Lio/flutter/embedding/android/KeyData;->physicalKey:J

    .line 309
    .line 310
    iput-object v1, v2, Lio/flutter/embedding/android/KeyData;->character:Ljava/lang/String;

    .line 311
    .line 312
    iput-boolean v10, v2, Lio/flutter/embedding/android/KeyData;->synthesized:Z

    .line 313
    .line 314
    move-object/from16 v0, p2

    .line 315
    .line 316
    invoke-direct {v9, v2, v0}, Lio/flutter/embedding/android/KeyEmbedderResponder;->sendKeyEvent(Lio/flutter/embedding/android/KeyData;Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 324
    .line 325
    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_13

    .line 328
    .line 329
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    check-cast v1, Ljava/lang/Runnable;

    .line 334
    .line 335
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 336
    .line 337
    .line 338
    goto :goto_8

    .line 339
    :cond_13
    return v6
.end method

.method private static keyOfPlane(JJ)J
    .locals 2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method private static synthetic lambda$sendKeyEvent$2(Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const-string p1, "KeyEmbedderResponder"

    .line 29
    .line 30
    const-string v1, "A null reply was received when sending a key event to the framework."

    .line 31
    .line 32
    invoke-static {p1, v1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-interface {p0, p1}, Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;->onKeyEventHandled(Z)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private synthetic lambda$synchronizePressingKey$0(Lio/flutter/embedding/android/KeyboardMap$KeyPair;JLandroid/view/KeyEvent;)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    iget-wide v2, p1, Lio/flutter/embedding/android/KeyboardMap$KeyPair;->logicalKey:J

    .line 3
    .line 4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getEventTime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    move-object v0, p0

    .line 17
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synthesizeEvent(ZLjava/lang/Long;Ljava/lang/Long;J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private synthetic lambda$synchronizePressingKey$1(Lio/flutter/embedding/android/KeyboardMap$KeyPair;JLandroid/view/KeyEvent;)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    iget-wide v2, p1, Lio/flutter/embedding/android/KeyboardMap$KeyPair;->logicalKey:J

    .line 3
    .line 4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getEventTime()J

    .line 13
    .line 14
    .line 15
    move-result-wide v4

    .line 16
    move-object v0, p0

    .line 17
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synthesizeEvent(ZLjava/lang/Long;Ljava/lang/Long;J)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private sendKeyEvent(Lio/flutter/embedding/android/KeyData;Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lio/flutter/embedding/android/s;

    .line 6
    .line 7
    invoke-direct {v0, p2}, Lio/flutter/embedding/android/s;-><init>(Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)V

    .line 8
    .line 9
    .line 10
    move-object p2, v0

    .line 11
    :goto_0
    iget-object v0, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->messenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 12
    .line 13
    const-string v1, "flutter/keydata"

    .line 14
    .line 15
    invoke-virtual {p1}, Lio/flutter/embedding/android/KeyData;->toBytes()Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {v0, v1, p1, p2}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private synthesizeEvent(ZLjava/lang/Long;Ljava/lang/Long;J)V
    .locals 5

    .line 1
    new-instance v0, Lio/flutter/embedding/android/KeyData;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/flutter/embedding/android/KeyData;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p4, v0, Lio/flutter/embedding/android/KeyData;->timestamp:J

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    sget-object p4, Lio/flutter/embedding/android/KeyData$Type;->kDown:Lio/flutter/embedding/android/KeyData$Type;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object p4, Lio/flutter/embedding/android/KeyData$Type;->kUp:Lio/flutter/embedding/android/KeyData$Type;

    .line 14
    .line 15
    :goto_0
    iput-object p4, v0, Lio/flutter/embedding/android/KeyData;->type:Lio/flutter/embedding/android/KeyData$Type;

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide p4

    .line 21
    iput-wide p4, v0, Lio/flutter/embedding/android/KeyData;->logicalKey:J

    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 24
    .line 25
    .line 26
    move-result-wide p4

    .line 27
    iput-wide p4, v0, Lio/flutter/embedding/android/KeyData;->physicalKey:J

    .line 28
    .line 29
    const/4 p4, 0x0

    .line 30
    iput-object p4, v0, Lio/flutter/embedding/android/KeyData;->character:Ljava/lang/String;

    .line 31
    .line 32
    const/4 p5, 0x1

    .line 33
    iput-boolean p5, v0, Lio/flutter/embedding/android/KeyData;->synthesized:Z

    .line 34
    .line 35
    sget-object p5, Lio/flutter/embedding/android/KeyData$DeviceType;->kKeyboard:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 36
    .line 37
    iput-object p5, v0, Lio/flutter/embedding/android/KeyData;->deviceType:Lio/flutter/embedding/android/KeyData$DeviceType;

    .line 38
    .line 39
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    const-wide/16 v3, 0x0

    .line 44
    .line 45
    cmp-long p5, v1, v3

    .line 46
    .line 47
    if-eqz p5, :cond_2

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    cmp-long p5, v1, v3

    .line 54
    .line 55
    if-eqz p5, :cond_2

    .line 56
    .line 57
    if-eqz p1, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move-object p2, p4

    .line 61
    :goto_1
    invoke-virtual {p0, p3, p2}, Lio/flutter/embedding/android/KeyEmbedderResponder;->updatePressingState(Ljava/lang/Long;Ljava/lang/Long;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-direct {p0, v0, p4}, Lio/flutter/embedding/android/KeyEmbedderResponder;->sendKeyEvent(Lio/flutter/embedding/android/KeyData;Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method


# virtual methods
.method public getPressedState()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->pressingRecords:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public handleEvent(Landroid/view/KeyEvent;Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/android/KeyEmbedderResponder;->handleEventImpl(Landroid/view/KeyEvent;Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    move-object v0, p0

    .line 21
    move-object v2, p1

    .line 22
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synthesizeEvent(ZLjava/lang/Long;Ljava/lang/Long;J)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x1

    .line 26
    invoke-interface {p2, p1}, Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;->onKeyEventHandled(Z)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method synchronizePressingKey(Lio/flutter/embedding/android/KeyboardMap$PressingGoal;ZJJLandroid/view/KeyEvent;Ljava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/embedding/android/KeyboardMap$PressingGoal;",
            "ZJJ",
            "Landroid/view/KeyEvent;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p8

    .line 4
    .line 5
    iget-object v2, v0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->keys:[Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    new-array v3, v3, [Z

    .line 9
    .line 10
    array-length v2, v2

    .line 11
    new-array v2, v2, [Ljava/lang/Boolean;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    move v6, v5

    .line 16
    :goto_0
    iget-object v7, v0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->keys:[Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    .line 17
    .line 18
    array-length v8, v7

    .line 19
    const/4 v9, 0x1

    .line 20
    if-ge v5, v8, :cond_7

    .line 21
    .line 22
    aget-object v12, v7, v5

    .line 23
    .line 24
    move-object/from16 v7, p0

    .line 25
    .line 26
    iget-object v8, v7, Lio/flutter/embedding/android/KeyEmbedderResponder;->pressingRecords:Ljava/util/HashMap;

    .line 27
    .line 28
    iget-wide v10, v12, Lio/flutter/embedding/android/KeyboardMap$KeyPair;->physicalKey:J

    .line 29
    .line 30
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v8

    .line 38
    aput-boolean v8, v3, v5

    .line 39
    .line 40
    iget-wide v10, v12, Lio/flutter/embedding/android/KeyboardMap$KeyPair;->logicalKey:J

    .line 41
    .line 42
    cmp-long v10, v10, p3

    .line 43
    .line 44
    if-nez v10, :cond_4

    .line 45
    .line 46
    sget-object v8, Lio/flutter/embedding/android/KeyEmbedderResponder$1;->$SwitchMap$io$flutter$embedding$android$KeyData$Type:[I

    .line 47
    .line 48
    invoke-static/range {p7 .. p7}, Lio/flutter/embedding/android/KeyEmbedderResponder;->getEventType(Landroid/view/KeyEvent;)Lio/flutter/embedding/android/KeyData$Type;

    .line 49
    .line 50
    .line 51
    move-result-object v10

    .line 52
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 53
    .line 54
    .line 55
    move-result v10

    .line 56
    aget v8, v8, v10

    .line 57
    .line 58
    if-eq v8, v9, :cond_3

    .line 59
    .line 60
    const/4 v10, 0x2

    .line 61
    if-eq v8, v10, :cond_2

    .line 62
    .line 63
    const/4 v10, 0x3

    .line 64
    if-eq v8, v10, :cond_0

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_0
    if-nez p2, :cond_1

    .line 68
    .line 69
    new-instance v6, Lio/flutter/embedding/android/u;

    .line 70
    .line 71
    move-object v10, v6

    .line 72
    move-object/from16 v11, p0

    .line 73
    .line 74
    move-wide/from16 v13, p5

    .line 75
    .line 76
    move-object/from16 v15, p7

    .line 77
    .line 78
    invoke-direct/range {v10 .. v15}, Lio/flutter/embedding/android/u;-><init>(Lio/flutter/embedding/android/KeyEmbedderResponder;Lio/flutter/embedding/android/KeyboardMap$KeyPair;JLandroid/view/KeyEvent;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_1
    aget-boolean v6, v3, v5

    .line 85
    .line 86
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    aput-object v6, v2, v5

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    aget-boolean v8, v3, v5

    .line 94
    .line 95
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    aput-object v8, v2, v5

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_3
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 103
    .line 104
    aput-object v6, v2, v5

    .line 105
    .line 106
    if-nez p2, :cond_6

    .line 107
    .line 108
    new-instance v6, Lio/flutter/embedding/android/t;

    .line 109
    .line 110
    move-object v10, v6

    .line 111
    move-object/from16 v11, p0

    .line 112
    .line 113
    move-wide/from16 v13, p5

    .line 114
    .line 115
    move-object/from16 v15, p7

    .line 116
    .line 117
    invoke-direct/range {v10 .. v15}, Lio/flutter/embedding/android/t;-><init>(Lio/flutter/embedding/android/KeyEmbedderResponder;Lio/flutter/embedding/android/KeyboardMap$KeyPair;JLandroid/view/KeyEvent;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_4
    if-nez v6, :cond_6

    .line 125
    .line 126
    if-eqz v8, :cond_5

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    move v9, v4

    .line 130
    :cond_6
    :goto_1
    move v6, v9

    .line 131
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_7
    move-object/from16 v7, p0

    .line 135
    .line 136
    if-eqz p2, :cond_b

    .line 137
    .line 138
    move v1, v4

    .line 139
    :goto_3
    iget-object v5, v0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->keys:[Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    .line 140
    .line 141
    array-length v5, v5

    .line 142
    if-ge v1, v5, :cond_a

    .line 143
    .line 144
    aget-object v5, v2, v1

    .line 145
    .line 146
    if-eqz v5, :cond_8

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_8
    if-eqz v6, :cond_9

    .line 150
    .line 151
    aget-boolean v5, v3, v1

    .line 152
    .line 153
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    aput-object v5, v2, v1

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_9
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 161
    .line 162
    aput-object v5, v2, v1

    .line 163
    .line 164
    move v6, v9

    .line 165
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_a
    if-nez v6, :cond_d

    .line 169
    .line 170
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 171
    .line 172
    aput-object v1, v2, v4

    .line 173
    .line 174
    goto :goto_7

    .line 175
    :cond_b
    move v1, v4

    .line 176
    :goto_5
    iget-object v5, v0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->keys:[Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    .line 177
    .line 178
    array-length v5, v5

    .line 179
    if-ge v1, v5, :cond_d

    .line 180
    .line 181
    aget-object v5, v2, v1

    .line 182
    .line 183
    if-eqz v5, :cond_c

    .line 184
    .line 185
    goto :goto_6

    .line 186
    :cond_c
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 187
    .line 188
    aput-object v5, v2, v1

    .line 189
    .line 190
    :goto_6
    add-int/lit8 v1, v1, 0x1

    .line 191
    .line 192
    goto :goto_5

    .line 193
    :cond_d
    :goto_7
    iget-object v1, v0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->keys:[Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    .line 194
    .line 195
    array-length v1, v1

    .line 196
    if-ge v4, v1, :cond_f

    .line 197
    .line 198
    aget-boolean v1, v3, v4

    .line 199
    .line 200
    aget-object v5, v2, v4

    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 203
    .line 204
    .line 205
    move-result v5

    .line 206
    if-eq v1, v5, :cond_e

    .line 207
    .line 208
    iget-object v1, v0, Lio/flutter/embedding/android/KeyboardMap$PressingGoal;->keys:[Lio/flutter/embedding/android/KeyboardMap$KeyPair;

    .line 209
    .line 210
    aget-object v1, v1, v4

    .line 211
    .line 212
    aget-object v5, v2, v4

    .line 213
    .line 214
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 215
    .line 216
    .line 217
    move-result v14

    .line 218
    iget-wide v5, v1, Lio/flutter/embedding/android/KeyboardMap$KeyPair;->logicalKey:J

    .line 219
    .line 220
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 221
    .line 222
    .line 223
    move-result-object v15

    .line 224
    iget-wide v5, v1, Lio/flutter/embedding/android/KeyboardMap$KeyPair;->physicalKey:J

    .line 225
    .line 226
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 227
    .line 228
    .line 229
    move-result-object v16

    .line 230
    invoke-virtual/range {p7 .. p7}, Landroid/view/KeyEvent;->getEventTime()J

    .line 231
    .line 232
    .line 233
    move-result-wide v17

    .line 234
    move-object/from16 v13, p0

    .line 235
    .line 236
    invoke-direct/range {v13 .. v18}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synthesizeEvent(ZLjava/lang/Long;Ljava/lang/Long;J)V

    .line 237
    .line 238
    .line 239
    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_f
    return-void
.end method

.method synchronizeTogglingKey(Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;ZJLandroid/view/KeyEvent;)V
    .locals 6

    .line 1
    iget-wide v0, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->logicalKey:J

    .line 2
    .line 3
    cmp-long p3, v0, p3

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean p3, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->enabled:Z

    .line 9
    .line 10
    if-eq p3, p2, :cond_3

    .line 11
    .line 12
    iget-object p2, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->pressingRecords:Ljava/util/HashMap;

    .line 13
    .line 14
    iget-wide p3, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->physicalKey:J

    .line 15
    .line 16
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    xor-int/lit8 p2, p2, 0x1

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    iget-boolean p3, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->enabled:Z

    .line 29
    .line 30
    xor-int/lit8 p3, p3, 0x1

    .line 31
    .line 32
    iput-boolean p3, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->enabled:Z

    .line 33
    .line 34
    :cond_1
    iget-wide p3, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->logicalKey:J

    .line 35
    .line 36
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-wide p3, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->physicalKey:J

    .line 41
    .line 42
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getEventTime()J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    move-object v0, p0

    .line 51
    move v1, p2

    .line 52
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synthesizeEvent(ZLjava/lang/Long;Ljava/lang/Long;J)V

    .line 53
    .line 54
    .line 55
    if-nez p2, :cond_2

    .line 56
    .line 57
    iget-boolean p3, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->enabled:Z

    .line 58
    .line 59
    xor-int/lit8 p3, p3, 0x1

    .line 60
    .line 61
    iput-boolean p3, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->enabled:Z

    .line 62
    .line 63
    :cond_2
    xor-int/lit8 v1, p2, 0x1

    .line 64
    .line 65
    iget-wide p2, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->logicalKey:J

    .line 66
    .line 67
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget-wide p1, p1, Lio/flutter/embedding/android/KeyboardMap$TogglingGoal;->physicalKey:J

    .line 72
    .line 73
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getEventTime()J

    .line 78
    .line 79
    .line 80
    move-result-wide v4

    .line 81
    move-object v0, p0

    .line 82
    invoke-direct/range {v0 .. v5}, Lio/flutter/embedding/android/KeyEmbedderResponder;->synthesizeEvent(ZLjava/lang/Long;Ljava/lang/Long;J)V

    .line 83
    .line 84
    .line 85
    :cond_3
    return-void
.end method

.method updatePressingState(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->pressingRecords:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Long;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    .line 15
    .line 16
    const-string p2, "The key was not empty"

    .line 17
    .line 18
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    throw p1

    .line 22
    :cond_1
    iget-object p2, p0, Lio/flutter/embedding/android/KeyEmbedderResponder;->pressingRecords:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Ljava/lang/Long;

    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    .line 34
    .line 35
    const-string p2, "The key was empty"

    .line 36
    .line 37
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    throw p1
.end method
