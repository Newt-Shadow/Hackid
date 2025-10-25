.class public final Lcom/yandex/metrica/impl/ob/Lg$a;
.super Lcom/yandex/metrica/impl/ob/Eg$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/impl/ob/Lg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/metrica/impl/ob/Eg$a<",
        "Lcom/yandex/metrica/impl/ob/D3$a;",
        "Lcom/yandex/metrica/impl/ob/Lg$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Ljava/lang/String;

.field public final e:Landroid/location/Location;

.field public final f:Z

.field public final g:Z

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:Z

.field public final l:Z

.field public final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final n:I


# direct methods
.method public constructor <init>(Lcom/yandex/metrica/impl/ob/D3$a;)V
    .locals 15

    move-object/from16 v0, p1

    .line 1
    iget-object v1, v0, Lcom/yandex/metrica/impl/ob/D3$a;->a:Ljava/lang/String;

    iget-object v2, v0, Lcom/yandex/metrica/impl/ob/D3$a;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/D3$a;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/D3$a;->d:Ljava/lang/String;

    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/D3$a;->e:Ljava/lang/Boolean;

    iget-object v6, v0, Lcom/yandex/metrica/impl/ob/D3$a;->f:Landroid/location/Location;

    iget-object v7, v0, Lcom/yandex/metrica/impl/ob/D3$a;->g:Ljava/lang/Boolean;

    iget-object v8, v0, Lcom/yandex/metrica/impl/ob/D3$a;->h:Ljava/lang/Integer;

    iget-object v9, v0, Lcom/yandex/metrica/impl/ob/D3$a;->i:Ljava/lang/Integer;

    iget-object v10, v0, Lcom/yandex/metrica/impl/ob/D3$a;->j:Ljava/lang/Integer;

    iget-object v11, v0, Lcom/yandex/metrica/impl/ob/D3$a;->k:Ljava/lang/Boolean;

    iget-object v12, v0, Lcom/yandex/metrica/impl/ob/D3$a;->l:Ljava/lang/Boolean;

    iget-object v13, v0, Lcom/yandex/metrica/impl/ob/D3$a;->m:Ljava/util/Map;

    iget-object v14, v0, Lcom/yandex/metrica/impl/ob/D3$a;->n:Ljava/lang/Integer;

    move-object v0, p0

    invoke-direct/range {v0 .. v14}, Lcom/yandex/metrica/impl/ob/Lg$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Landroid/location/Location;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/yandex/metrica/impl/ob/Eg$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iput-object p4, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->d:Ljava/lang/String;

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 5
    invoke-static {p5, p1}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->f:Z

    .line 6
    iput-object p6, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->e:Landroid/location/Location;

    .line 7
    invoke-static {p7, p1}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->g:Z

    const/16 p2, 0xa

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p8, p3}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 9
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->h:I

    const/4 p2, 0x7

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p9, p2}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->i:I

    const/16 p2, 0x5a

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 12
    invoke-static {p10, p2}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->j:I

    .line 13
    invoke-static {p11, p1}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->k:Z

    .line 14
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 15
    invoke-static {p12, p1}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->l:Z

    .line 16
    iput-object p13, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->m:Ljava/util/Map;

    const/16 p1, 0x3e8

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 18
    invoke-static {p14, p1}, Lcom/yandex/metrica/impl/ob/Tl;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->n:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    check-cast v1, Lcom/yandex/metrica/impl/ob/D3$a;

    .line 6
    .line 7
    new-instance v17, Lcom/yandex/metrica/impl/ob/Lg$a;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/D3$a;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/yandex/metrica/impl/ob/Eg$a;->a:Ljava/lang/String;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v3, v2

    .line 17
    :goto_0
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/D3$a;->b:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v4, v0, Lcom/yandex/metrica/impl/ob/Eg$a;->b:Ljava/lang/String;

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object v4, v2

    .line 25
    :goto_1
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/D3$a;->c:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v5, v0, Lcom/yandex/metrica/impl/ob/Eg$a;->c:Ljava/lang/String;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move-object v5, v2

    .line 33
    :goto_2
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/D3$a;->d:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v6, v0, Lcom/yandex/metrica/impl/ob/Lg$a;->d:Ljava/lang/String;

    .line 36
    .line 37
    if-nez v2, :cond_3

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_3
    move-object v6, v2

    .line 41
    :goto_3
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/D3$a;->e:Ljava/lang/Boolean;

    .line 42
    .line 43
    iget-boolean v7, v0, Lcom/yandex/metrica/impl/ob/Lg$a;->f:Z

    .line 44
    .line 45
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    if-nez v2, :cond_4

    .line 50
    .line 51
    goto :goto_4

    .line 52
    :cond_4
    move-object v7, v2

    .line 53
    :goto_4
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/D3$a;->f:Landroid/location/Location;

    .line 54
    .line 55
    iget-object v8, v0, Lcom/yandex/metrica/impl/ob/Lg$a;->e:Landroid/location/Location;

    .line 56
    .line 57
    if-nez v2, :cond_5

    .line 58
    .line 59
    goto :goto_5

    .line 60
    :cond_5
    move-object v8, v2

    .line 61
    :goto_5
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/D3$a;->g:Ljava/lang/Boolean;

    .line 62
    .line 63
    iget-boolean v9, v0, Lcom/yandex/metrica/impl/ob/Lg$a;->g:Z

    .line 64
    .line 65
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    if-nez v2, :cond_6

    .line 70
    .line 71
    goto :goto_6

    .line 72
    :cond_6
    move-object v9, v2

    .line 73
    :goto_6
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/D3$a;->h:Ljava/lang/Integer;

    .line 74
    .line 75
    iget v10, v0, Lcom/yandex/metrica/impl/ob/Lg$a;->h:I

    .line 76
    .line 77
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    if-nez v2, :cond_7

    .line 82
    .line 83
    goto :goto_7

    .line 84
    :cond_7
    move-object v10, v2

    .line 85
    :goto_7
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/D3$a;->i:Ljava/lang/Integer;

    .line 86
    .line 87
    iget v11, v0, Lcom/yandex/metrica/impl/ob/Lg$a;->i:I

    .line 88
    .line 89
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    if-nez v2, :cond_8

    .line 94
    .line 95
    goto :goto_8

    .line 96
    :cond_8
    move-object v11, v2

    .line 97
    :goto_8
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/D3$a;->j:Ljava/lang/Integer;

    .line 98
    .line 99
    iget v12, v0, Lcom/yandex/metrica/impl/ob/Lg$a;->j:I

    .line 100
    .line 101
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    if-nez v2, :cond_9

    .line 106
    .line 107
    goto :goto_9

    .line 108
    :cond_9
    move-object v12, v2

    .line 109
    :goto_9
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/D3$a;->k:Ljava/lang/Boolean;

    .line 110
    .line 111
    iget-boolean v13, v0, Lcom/yandex/metrica/impl/ob/Lg$a;->k:Z

    .line 112
    .line 113
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    .line 115
    .line 116
    move-result-object v13

    .line 117
    if-nez v2, :cond_a

    .line 118
    .line 119
    goto :goto_a

    .line 120
    :cond_a
    move-object v13, v2

    .line 121
    :goto_a
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/D3$a;->l:Ljava/lang/Boolean;

    .line 122
    .line 123
    iget-boolean v14, v0, Lcom/yandex/metrica/impl/ob/Lg$a;->l:Z

    .line 124
    .line 125
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 126
    .line 127
    .line 128
    move-result-object v14

    .line 129
    if-nez v2, :cond_b

    .line 130
    .line 131
    goto :goto_b

    .line 132
    :cond_b
    move-object v14, v2

    .line 133
    :goto_b
    iget-object v2, v1, Lcom/yandex/metrica/impl/ob/D3$a;->m:Ljava/util/Map;

    .line 134
    .line 135
    iget-object v15, v0, Lcom/yandex/metrica/impl/ob/Lg$a;->m:Ljava/util/Map;

    .line 136
    .line 137
    if-nez v2, :cond_c

    .line 138
    .line 139
    goto :goto_c

    .line 140
    :cond_c
    move-object v15, v2

    .line 141
    :goto_c
    iget-object v1, v1, Lcom/yandex/metrica/impl/ob/D3$a;->n:Ljava/lang/Integer;

    .line 142
    .line 143
    iget v2, v0, Lcom/yandex/metrica/impl/ob/Lg$a;->n:I

    .line 144
    .line 145
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    if-nez v1, :cond_d

    .line 150
    .line 151
    move-object/from16 v16, v2

    .line 152
    .line 153
    goto :goto_d

    .line 154
    :cond_d
    move-object/from16 v16, v1

    .line 155
    .line 156
    :goto_d
    move-object/from16 v2, v17

    .line 157
    .line 158
    invoke-direct/range {v2 .. v16}, Lcom/yandex/metrica/impl/ob/Lg$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Landroid/location/Location;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Map;Ljava/lang/Integer;)V

    .line 159
    .line 160
    .line 161
    return-object v17
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    check-cast p1, Lcom/yandex/metrica/impl/ob/D3$a;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Eg$a;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_0
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->b:Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Eg$a;->b:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_1
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->c:Ljava/lang/String;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Eg$a;->c:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_2
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->e:Ljava/lang/Boolean;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->f:Z

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eq v2, v0, :cond_3

    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_3
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->g:Ljava/lang/Boolean;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->g:Z

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eq v2, v0, :cond_4

    .line 71
    .line 72
    goto/16 :goto_3

    .line 73
    .line 74
    :cond_4
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->h:Ljava/lang/Integer;

    .line 75
    .line 76
    if-eqz v0, :cond_5

    .line 77
    .line 78
    iget v2, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->h:I

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eq v2, v0, :cond_5

    .line 85
    .line 86
    goto/16 :goto_3

    .line 87
    .line 88
    :cond_5
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->i:Ljava/lang/Integer;

    .line 89
    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    iget v2, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->i:I

    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eq v2, v0, :cond_6

    .line 99
    .line 100
    goto/16 :goto_3

    .line 101
    .line 102
    :cond_6
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->j:Ljava/lang/Integer;

    .line 103
    .line 104
    if-eqz v0, :cond_7

    .line 105
    .line 106
    iget v2, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->j:I

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eq v2, v0, :cond_7

    .line 113
    .line 114
    goto/16 :goto_3

    .line 115
    .line 116
    :cond_7
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->k:Ljava/lang/Boolean;

    .line 117
    .line 118
    if-eqz v0, :cond_8

    .line 119
    .line 120
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->k:Z

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eq v2, v0, :cond_8

    .line 127
    .line 128
    goto/16 :goto_3

    .line 129
    .line 130
    :cond_8
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->l:Ljava/lang/Boolean;

    .line 131
    .line 132
    if-eqz v0, :cond_9

    .line 133
    .line 134
    iget-boolean v2, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->l:Z

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eq v2, v0, :cond_9

    .line 141
    .line 142
    goto/16 :goto_3

    .line 143
    .line 144
    :cond_9
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->d:Ljava/lang/String;

    .line 145
    .line 146
    if-eqz v0, :cond_a

    .line 147
    .line 148
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->d:Ljava/lang/String;

    .line 149
    .line 150
    if-eqz v2, :cond_1e

    .line 151
    .line 152
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_a

    .line 157
    .line 158
    goto/16 :goto_3

    .line 159
    .line 160
    :cond_a
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->m:Ljava/util/Map;

    .line 161
    .line 162
    if-eqz v0, :cond_b

    .line 163
    .line 164
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->m:Ljava/util/Map;

    .line 165
    .line 166
    if-eqz v2, :cond_1e

    .line 167
    .line 168
    invoke-interface {v2, v0}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-nez v0, :cond_b

    .line 173
    .line 174
    goto/16 :goto_3

    .line 175
    .line 176
    :cond_b
    iget-object v0, p1, Lcom/yandex/metrica/impl/ob/D3$a;->n:Ljava/lang/Integer;

    .line 177
    .line 178
    if-eqz v0, :cond_c

    .line 179
    .line 180
    iget v2, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->n:I

    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eq v2, v0, :cond_c

    .line 187
    .line 188
    goto/16 :goto_3

    .line 189
    .line 190
    :cond_c
    iget-object p1, p1, Lcom/yandex/metrica/impl/ob/D3$a;->f:Landroid/location/Location;

    .line 191
    .line 192
    const/4 v0, 0x1

    .line 193
    if-eqz p1, :cond_1d

    .line 194
    .line 195
    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/Lg$a;->e:Landroid/location/Location;

    .line 196
    .line 197
    if-ne v2, p1, :cond_d

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_d
    if-eqz v2, :cond_1c

    .line 202
    .line 203
    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    .line 204
    .line 205
    .line 206
    move-result-wide v3

    .line 207
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 208
    .line 209
    .line 210
    move-result-wide v5

    .line 211
    cmp-long v3, v3, v5

    .line 212
    .line 213
    if-eqz v3, :cond_e

    .line 214
    .line 215
    goto/16 :goto_1

    .line 216
    .line 217
    :cond_e
    const/16 v3, 0x11

    .line 218
    .line 219
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-eqz v3, :cond_f

    .line 224
    .line 225
    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 226
    .line 227
    .line 228
    move-result-wide v3

    .line 229
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    .line 230
    .line 231
    .line 232
    move-result-wide v5

    .line 233
    cmp-long v3, v3, v5

    .line 234
    .line 235
    if-eqz v3, :cond_f

    .line 236
    .line 237
    goto/16 :goto_1

    .line 238
    .line 239
    :cond_f
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 240
    .line 241
    .line 242
    move-result-wide v3

    .line 243
    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    .line 244
    .line 245
    .line 246
    move-result-wide v5

    .line 247
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    if-eqz v3, :cond_10

    .line 252
    .line 253
    goto/16 :goto_1

    .line 254
    .line 255
    :cond_10
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 256
    .line 257
    .line 258
    move-result-wide v3

    .line 259
    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    .line 260
    .line 261
    .line 262
    move-result-wide v5

    .line 263
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    if-eqz v3, :cond_11

    .line 268
    .line 269
    goto/16 :goto_1

    .line 270
    .line 271
    :cond_11
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    .line 272
    .line 273
    .line 274
    move-result-wide v3

    .line 275
    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    .line 276
    .line 277
    .line 278
    move-result-wide v5

    .line 279
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    .line 280
    .line 281
    .line 282
    move-result v3

    .line 283
    if-eqz v3, :cond_12

    .line 284
    .line 285
    goto/16 :goto_1

    .line 286
    .line 287
    :cond_12
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    invoke-virtual {v2}, Landroid/location/Location;->getSpeed()F

    .line 292
    .line 293
    .line 294
    move-result v4

    .line 295
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    if-eqz v3, :cond_13

    .line 300
    .line 301
    goto/16 :goto_1

    .line 302
    .line 303
    :cond_13
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    invoke-virtual {v2}, Landroid/location/Location;->getBearing()F

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    if-eqz v3, :cond_14

    .line 316
    .line 317
    goto/16 :goto_1

    .line 318
    .line 319
    :cond_14
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    .line 324
    .line 325
    .line 326
    move-result v4

    .line 327
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-eqz v3, :cond_15

    .line 332
    .line 333
    goto/16 :goto_1

    .line 334
    .line 335
    :cond_15
    const/16 v3, 0x1a

    .line 336
    .line 337
    invoke-static {v3}, Lcom/yandex/metrica/impl/ob/A2;->a(I)Z

    .line 338
    .line 339
    .line 340
    move-result v3

    .line 341
    if-eqz v3, :cond_18

    .line 342
    .line 343
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/jo;->a(Landroid/location/Location;)F

    .line 344
    .line 345
    .line 346
    move-result v3

    .line 347
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/jo;->a(Landroid/location/Location;)F

    .line 348
    .line 349
    .line 350
    move-result v4

    .line 351
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    .line 352
    .line 353
    .line 354
    move-result v3

    .line 355
    if-eqz v3, :cond_16

    .line 356
    .line 357
    goto :goto_1

    .line 358
    :cond_16
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/ko;->a(Landroid/location/Location;)F

    .line 359
    .line 360
    .line 361
    move-result v3

    .line 362
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/ko;->a(Landroid/location/Location;)F

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    .line 367
    .line 368
    .line 369
    move-result v3

    .line 370
    if-eqz v3, :cond_17

    .line 371
    .line 372
    goto :goto_1

    .line 373
    :cond_17
    invoke-static {p1}, Lcom/yandex/metrica/impl/ob/lo;->a(Landroid/location/Location;)F

    .line 374
    .line 375
    .line 376
    move-result v3

    .line 377
    invoke-static {v2}, Lcom/yandex/metrica/impl/ob/lo;->a(Landroid/location/Location;)F

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    .line 382
    .line 383
    .line 384
    move-result v3

    .line 385
    if-eqz v3, :cond_18

    .line 386
    .line 387
    goto :goto_1

    .line 388
    :cond_18
    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    if-eqz v3, :cond_19

    .line 393
    .line 394
    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    if-nez v3, :cond_1a

    .line 407
    .line 408
    goto :goto_1

    .line 409
    :cond_19
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    if-eqz v3, :cond_1a

    .line 414
    .line 415
    goto :goto_1

    .line 416
    :cond_1a
    invoke-virtual {v2}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    if-eqz v3, :cond_1b

    .line 421
    .line 422
    invoke-virtual {v2}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    .line 423
    .line 424
    .line 425
    move-result-object v2

    .line 426
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result p1

    .line 434
    goto :goto_2

    .line 435
    :cond_1b
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    if-nez p1, :cond_1c

    .line 440
    .line 441
    :goto_0
    move p1, v0

    .line 442
    goto :goto_2

    .line 443
    :cond_1c
    :goto_1
    move p1, v1

    .line 444
    :goto_2
    if-eqz p1, :cond_1e

    .line 445
    .line 446
    :cond_1d
    move v1, v0

    .line 447
    :cond_1e
    :goto_3
    return v1
.end method
