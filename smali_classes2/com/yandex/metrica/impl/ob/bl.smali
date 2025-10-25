.class public Lcom/yandex/metrica/impl/ob/bl;
.super Lcom/yandex/metrica/impl/ob/rl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/ob/bl$b;
    }
.end annotation


# instance fields
.field public h:Ljava/lang/String;

.field public final i:I

.field public j:Ljava/lang/Integer;

.field public final k:Z

.field public final l:Lcom/yandex/metrica/impl/ob/bl$b;

.field public final m:Ljava/lang/Float;

.field public final n:Ljava/lang/Float;

.field public final o:Ljava/lang/Float;

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/Boolean;

.field public final r:Ljava/lang/Boolean;

.field public s:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/rl$b;IZLcom/yandex/metrica/impl/ob/rl$a;Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;ZILcom/yandex/metrica/impl/ob/bl$b;)V
    .locals 9

    .line 1
    move-object v8, p0

    .line 2
    sget-object v6, Lcom/yandex/metrica/impl/ob/rl$c;->c:Lcom/yandex/metrica/impl/ob/rl$c;

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move v4, p4

    .line 9
    move v5, p5

    .line 10
    move-object v7, p6

    .line 11
    invoke-direct/range {v0 .. v7}, Lcom/yandex/metrica/impl/ob/rl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/rl$b;IZLcom/yandex/metrica/impl/ob/rl$c;Lcom/yandex/metrica/impl/ob/rl$a;)V

    .line 12
    .line 13
    .line 14
    move-object/from16 v0, p7

    .line 15
    .line 16
    iput-object v0, v8, Lcom/yandex/metrica/impl/ob/bl;->h:Ljava/lang/String;

    .line 17
    .line 18
    move/from16 v0, p15

    .line 19
    .line 20
    iput v0, v8, Lcom/yandex/metrica/impl/ob/bl;->i:I

    .line 21
    .line 22
    move-object/from16 v0, p16

    .line 23
    .line 24
    iput-object v0, v8, Lcom/yandex/metrica/impl/ob/bl;->l:Lcom/yandex/metrica/impl/ob/bl$b;

    .line 25
    .line 26
    move/from16 v0, p14

    .line 27
    .line 28
    iput-boolean v0, v8, Lcom/yandex/metrica/impl/ob/bl;->k:Z

    .line 29
    .line 30
    move-object/from16 v0, p8

    .line 31
    .line 32
    iput-object v0, v8, Lcom/yandex/metrica/impl/ob/bl;->m:Ljava/lang/Float;

    .line 33
    .line 34
    move-object/from16 v0, p9

    .line 35
    .line 36
    iput-object v0, v8, Lcom/yandex/metrica/impl/ob/bl;->n:Ljava/lang/Float;

    .line 37
    .line 38
    move-object/from16 v0, p10

    .line 39
    .line 40
    iput-object v0, v8, Lcom/yandex/metrica/impl/ob/bl;->o:Ljava/lang/Float;

    .line 41
    .line 42
    move-object/from16 v0, p11

    .line 43
    .line 44
    iput-object v0, v8, Lcom/yandex/metrica/impl/ob/bl;->p:Ljava/lang/String;

    .line 45
    .line 46
    move-object/from16 v0, p12

    .line 47
    .line 48
    iput-object v0, v8, Lcom/yandex/metrica/impl/ob/bl;->q:Ljava/lang/Boolean;

    .line 49
    .line 50
    move-object/from16 v0, p13

    .line 51
    .line 52
    iput-object v0, v8, Lcom/yandex/metrica/impl/ob/bl;->r:Ljava/lang/Boolean;

    .line 53
    .line 54
    return-void
.end method

.method private a(Lcom/yandex/metrica/impl/ob/hl;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 15
    :try_start_0
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/hl;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const-string v1, "sp"

    .line 16
    :try_start_1
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bl;->m:Ljava/lang/Float;

    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "sd"

    :try_start_2
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bl;->n:Ljava/lang/Float;

    .line 18
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "ss"

    :try_start_3
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bl;->o:Ljava/lang/Float;

    .line 19
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    :cond_0
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/hl;->b:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    const-string v1, "rts"

    .line 21
    :try_start_4
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bl;->s:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    :cond_1
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/hl;->d:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_2

    const-string v1, "c"

    .line 23
    :try_start_5
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bl;->p:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-string v2, "ib"

    :try_start_6
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bl;->q:Ljava/lang/Boolean;

    .line 25
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v2, "ii"

    :try_start_7
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bl;->r:Ljava/lang/Boolean;

    .line 26
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    :cond_2
    iget-boolean v1, p1, Lcom/yandex/metrica/impl/ob/hl;->c:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_3

    const-string v1, "vtl"

    .line 28
    :try_start_8
    iget v2, p0, Lcom/yandex/metrica/impl/ob/bl;->i:I

    .line 29
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v2, "iv"

    :try_start_9
    iget-boolean v3, p0, Lcom/yandex/metrica/impl/ob/bl;->k:Z

    .line 30
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const-string v2, "tst"

    :try_start_a
    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/bl;->l:Lcom/yandex/metrica/impl/ob/bl$b;

    iget-object v3, v3, Lcom/yandex/metrica/impl/ob/bl$b;->a:Ljava/lang/String;

    .line 31
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    :cond_3
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bl;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 34
    :cond_4
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bl;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 35
    :goto_0
    iget-boolean p1, p1, Lcom/yandex/metrica/impl/ob/hl;->g:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz p1, :cond_5

    const-string p1, "tl"

    .line 36
    :try_start_b
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "otl"

    .line 37
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_0
    :cond_5
    return-object v0
.end method


# virtual methods
.method a(Lcom/yandex/metrica/impl/ob/Ak;)Lcom/yandex/metrica/impl/ob/rl$b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/rl;->c:Lcom/yandex/metrica/impl/ob/rl$b;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/bl;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/ob/Ak;->a(Ljava/lang/String;)Lcom/yandex/metrica/impl/ob/rl$b;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method a(Lcom/yandex/metrica/impl/ob/hl;)Lorg/json/JSONArray;
    .locals 5

    .line 4
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 5
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bl;->h:Ljava/lang/String;

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p1, Lcom/yandex/metrica/impl/ob/hl;->l:I

    if-le v3, v4, :cond_0

    .line 8
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bl;->h:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/yandex/metrica/impl/ob/bl;->j:Ljava/lang/Integer;

    .line 9
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bl;->h:Ljava/lang/String;

    iget v3, p1, Lcom/yandex/metrica/impl/ob/hl;->l:I

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-string v3, "t"

    const-string v4, "TEXT"

    .line 10
    :try_start_1
    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "vl"

    .line 11
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "i"

    .line 12
    :try_start_2
    invoke-direct {p0, p1, v2}, Lcom/yandex/metrica/impl/ob/bl;->a(Lcom/yandex/metrica/impl/ob/hl;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    return-object v0
.end method

.method a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "TextViewElement{mText=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/bl;->h:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", mVisibleTextLength="

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget v2, p0, Lcom/yandex/metrica/impl/ob/bl;->i:I

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", mOriginalTextLength="

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bl;->j:Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ", mIsVisible="

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/bl;->k:Z

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, ", mTextShorteningType="

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bl;->l:Lcom/yandex/metrica/impl/ob/bl$b;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v2, ", mSizePx="

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bl;->m:Ljava/lang/Float;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, ", mSizeDp="

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bl;->n:Ljava/lang/Float;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, ", mSizeSp="

    .line 82
    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bl;->o:Ljava/lang/Float;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v2, ", mColor=\'"

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bl;->p:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v2, ", mIsBold="

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bl;->q:Ljava/lang/Boolean;

    .line 110
    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v2, ", mIsItalic="

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bl;->r:Ljava/lang/Boolean;

    .line 120
    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v2, ", mRelativeTextSize="

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/bl;->s:Ljava/lang/Integer;

    .line 130
    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v2, ", mClassName=\'"

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/rl;->a:Ljava/lang/String;

    .line 140
    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v2, ", mId=\'"

    .line 148
    .line 149
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/rl;->b:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v1, ", mParseFilterReason="

    .line 161
    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/rl;->c:Lcom/yandex/metrica/impl/ob/rl$b;

    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v1, ", mDepth="

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget v1, p0, Lcom/yandex/metrica/impl/ob/rl;->d:I

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v1, ", mListItem="

    .line 181
    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget-boolean v1, p0, Lcom/yandex/metrica/impl/ob/rl;->e:Z

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v1, ", mViewType="

    .line 191
    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/rl;->f:Lcom/yandex/metrica/impl/ob/rl$c;

    .line 196
    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v1, ", mClassType="

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/rl;->g:Lcom/yandex/metrica/impl/ob/rl$a;

    .line 206
    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const/16 v1, 0x7d

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    return-object v0
.end method
