.class public Lcom/yandex/metrica/impl/ob/R9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/metrica/core/api/ProtobufConverter;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/yandex/metrica/impl/ob/H1$d;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/yandex/metrica/impl/ob/H1$d;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/metrica/impl/ob/R9$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/R9$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/yandex/metrica/impl/ob/R9;->a:Ljava/util/Map;

    .line 11
    .line 12
    new-instance v0, Lcom/yandex/metrica/impl/ob/R9$b;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/R9$b;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/yandex/metrica/impl/ob/R9;->b:Ljava/util/Map;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/Jf$e;

    .line 2
    .line 3
    new-instance v0, Lcom/yandex/metrica/impl/ob/Df;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/yandex/metrica/impl/ob/Df;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Jf$e;->a()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    move-object v2, v1

    .line 13
    check-cast v2, Ljava/util/HashSet;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    new-array v2, v2, [Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, [Ljava/lang/String;

    .line 26
    .line 27
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/Df;->b:[Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/yandex/metrica/impl/ob/Jf$e;->b()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    new-array v1, v1, [Lcom/yandex/metrica/impl/ob/Df$a;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    move v3, v2

    .line 41
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-ge v3, v4, :cond_3

    .line 46
    .line 47
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lcom/yandex/metrica/impl/ob/Jf$e$a;

    .line 52
    .line 53
    new-instance v5, Lcom/yandex/metrica/impl/ob/Df$a;

    .line 54
    .line 55
    invoke-direct {v5}, Lcom/yandex/metrica/impl/ob/Df$a;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v6, v4, Lcom/yandex/metrica/impl/ob/Jf$e$a;->a:Ljava/lang/String;

    .line 59
    .line 60
    iput-object v6, v5, Lcom/yandex/metrica/impl/ob/Df$a;->a:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v6, v4, Lcom/yandex/metrica/impl/ob/Jf$e$a;->b:Ljava/lang/String;

    .line 63
    .line 64
    iput-object v6, v5, Lcom/yandex/metrica/impl/ob/Df$a;->b:Ljava/lang/String;

    .line 65
    .line 66
    iget-object v6, v4, Lcom/yandex/metrica/impl/ob/Jf$e$a;->d:Lcom/yandex/metrica/impl/ob/rm;

    .line 67
    .line 68
    invoke-virtual {v6}, Lcom/yandex/metrica/impl/ob/rm;->c()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    new-array v6, v6, [Lcom/yandex/metrica/impl/ob/Df$a$a;

    .line 73
    .line 74
    iget-object v7, v4, Lcom/yandex/metrica/impl/ob/Jf$e$a;->d:Lcom/yandex/metrica/impl/ob/rm;

    .line 75
    .line 76
    invoke-virtual {v7}, Lcom/yandex/metrica/impl/ob/rm;->a()Ljava/util/Set;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    move v8, v2

    .line 85
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    if-eqz v9, :cond_1

    .line 90
    .line 91
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    check-cast v9, Ljava/util/Map$Entry;

    .line 96
    .line 97
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    check-cast v10, Ljava/util/Collection;

    .line 102
    .line 103
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    if-eqz v11, :cond_0

    .line 112
    .line 113
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    check-cast v11, Ljava/lang/String;

    .line 118
    .line 119
    new-instance v12, Lcom/yandex/metrica/impl/ob/Df$a$a;

    .line 120
    .line 121
    invoke-direct {v12}, Lcom/yandex/metrica/impl/ob/Df$a$a;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v13

    .line 128
    check-cast v13, Ljava/lang/String;

    .line 129
    .line 130
    iput-object v13, v12, Lcom/yandex/metrica/impl/ob/Df$a$a;->a:Ljava/lang/String;

    .line 131
    .line 132
    iput-object v11, v12, Lcom/yandex/metrica/impl/ob/Df$a$a;->b:Ljava/lang/String;

    .line 133
    .line 134
    aput-object v12, v6, v8

    .line 135
    .line 136
    add-int/lit8 v8, v8, 0x1

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_1
    iput-object v6, v5, Lcom/yandex/metrica/impl/ob/Df$a;->d:[Lcom/yandex/metrica/impl/ob/Df$a$a;

    .line 140
    .line 141
    iget-object v6, v4, Lcom/yandex/metrica/impl/ob/Jf$e$a;->c:Ljava/lang/String;

    .line 142
    .line 143
    iput-object v6, v5, Lcom/yandex/metrica/impl/ob/Df$a;->c:Ljava/lang/String;

    .line 144
    .line 145
    iget-wide v6, v4, Lcom/yandex/metrica/impl/ob/Jf$e$a;->e:J

    .line 146
    .line 147
    iput-wide v6, v5, Lcom/yandex/metrica/impl/ob/Df$a;->e:J

    .line 148
    .line 149
    iget-object v4, v4, Lcom/yandex/metrica/impl/ob/Jf$e$a;->f:Ljava/util/List;

    .line 150
    .line 151
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 152
    .line 153
    .line 154
    move-result v6

    .line 155
    new-array v6, v6, [I

    .line 156
    .line 157
    move v7, v2

    .line 158
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 159
    .line 160
    .line 161
    move-result v8

    .line 162
    if-ge v7, v8, :cond_2

    .line 163
    .line 164
    sget-object v8, Lcom/yandex/metrica/impl/ob/R9;->b:Ljava/util/Map;

    .line 165
    .line 166
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    check-cast v8, Ljava/lang/Integer;

    .line 175
    .line 176
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    aput v8, v6, v7

    .line 181
    .line 182
    add-int/lit8 v7, v7, 0x1

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_2
    iput-object v6, v5, Lcom/yandex/metrica/impl/ob/Df$a;->f:[I

    .line 186
    .line 187
    aput-object v5, v1, v3

    .line 188
    .line 189
    add-int/lit8 v3, v3, 0x1

    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_3
    iput-object v1, v0, Lcom/yandex/metrica/impl/ob/Df;->a:[Lcom/yandex/metrica/impl/ob/Df$a;

    .line 194
    .line 195
    return-object v0
.end method

.method public toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    check-cast v0, Lcom/yandex/metrica/impl/ob/Df;

    .line 4
    .line 5
    new-instance v1, Lcom/yandex/metrica/impl/ob/Jf$e;

    .line 6
    .line 7
    new-instance v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Df;->a:[Lcom/yandex/metrica/impl/ob/Df$a;

    .line 13
    .line 14
    array-length v4, v3

    .line 15
    const/4 v5, 0x0

    .line 16
    move v6, v5

    .line 17
    :goto_0
    if-ge v6, v4, :cond_2

    .line 18
    .line 19
    aget-object v7, v3, v6

    .line 20
    .line 21
    new-instance v15, Lcom/yandex/metrica/impl/ob/Jf$e$a;

    .line 22
    .line 23
    iget-object v9, v7, Lcom/yandex/metrica/impl/ob/Df$a;->a:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v10, v7, Lcom/yandex/metrica/impl/ob/Df$a;->b:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v11, v7, Lcom/yandex/metrica/impl/ob/Df$a;->c:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v8, v7, Lcom/yandex/metrica/impl/ob/Df$a;->d:[Lcom/yandex/metrica/impl/ob/Df$a$a;

    .line 30
    .line 31
    new-instance v12, Lcom/yandex/metrica/impl/ob/rm;

    .line 32
    .line 33
    invoke-direct {v12, v5}, Lcom/yandex/metrica/impl/ob/rm;-><init>(Z)V

    .line 34
    .line 35
    .line 36
    array-length v13, v8

    .line 37
    move v14, v5

    .line 38
    :goto_1
    if-ge v14, v13, :cond_0

    .line 39
    .line 40
    aget-object v5, v8, v14

    .line 41
    .line 42
    move-object/from16 v16, v3

    .line 43
    .line 44
    iget-object v3, v5, Lcom/yandex/metrica/impl/ob/Df$a$a;->a:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v5, v5, Lcom/yandex/metrica/impl/ob/Df$a$a;->b:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v12, v3, v5}, Lcom/yandex/metrica/impl/ob/rm;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Collection;

    .line 49
    .line 50
    .line 51
    add-int/lit8 v14, v14, 0x1

    .line 52
    .line 53
    move-object/from16 v3, v16

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    move-object/from16 v16, v3

    .line 58
    .line 59
    iget-wide v13, v7, Lcom/yandex/metrica/impl/ob/Df$a;->e:J

    .line 60
    .line 61
    iget-object v3, v7, Lcom/yandex/metrica/impl/ob/Df$a;->f:[I

    .line 62
    .line 63
    new-instance v5, Ljava/util/ArrayList;

    .line 64
    .line 65
    array-length v7, v3

    .line 66
    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .line 68
    .line 69
    array-length v7, v3

    .line 70
    const/4 v8, 0x0

    .line 71
    :goto_2
    if-ge v8, v7, :cond_1

    .line 72
    .line 73
    aget v17, v3, v8

    .line 74
    .line 75
    move-object/from16 v18, v3

    .line 76
    .line 77
    sget-object v3, Lcom/yandex/metrica/impl/ob/R9;->a:Ljava/util/Map;

    .line 78
    .line 79
    move/from16 v19, v4

    .line 80
    .line 81
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    add-int/lit8 v8, v8, 0x1

    .line 93
    .line 94
    move-object/from16 v3, v18

    .line 95
    .line 96
    move/from16 v4, v19

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_1
    move/from16 v19, v4

    .line 100
    .line 101
    move-object v8, v15

    .line 102
    move-object v3, v15

    .line 103
    move-object v15, v5

    .line 104
    invoke-direct/range {v8 .. v15}, Lcom/yandex/metrica/impl/ob/Jf$e$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/metrica/impl/ob/rm;JLjava/util/List;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    add-int/lit8 v6, v6, 0x1

    .line 111
    .line 112
    move-object/from16 v3, v16

    .line 113
    .line 114
    const/4 v5, 0x0

    .line 115
    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, v0, Lcom/yandex/metrica/impl/ob/Df;->b:[Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-direct {v1, v2, v0}, Lcom/yandex/metrica/impl/ob/Jf$e;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 123
    .line 124
    .line 125
    return-object v1
.end method
