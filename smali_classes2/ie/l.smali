.class public abstract Lie/l;
.super Lie/a;
.source "SourceFile"


# instance fields
.field private final a:Lee/b;

.field private final b:Lee/b;


# direct methods
.method private constructor <init>(Lee/b;Lee/b;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lie/a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Lie/l;->a:Lee/b;

    .line 4
    iput-object p2, p0, Lie/l;->b:Lee/b;

    return-void
.end method

.method public synthetic constructor <init>(Lee/b;Lee/b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lie/l;-><init>(Lee/b;Lee/b;)V

    return-void
.end method


# virtual methods
.method public abstract a()Lge/d;
.end method

.method public e(Lhe/f;Ljava/lang/Object;)V
    .locals 7

    .line 1
    const-string v0, "encoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lie/a;->j(Ljava/lang/Object;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Lie/l;->a()Lge/d;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {p1, v1, v0}, Lhe/f;->h(Lge/d;I)Lhe/d;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p2}, Lie/a;->i(Ljava/lang/Object;)Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/util/Map$Entry;

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p0}, Lie/l;->a()Lge/d;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    add-int/lit8 v5, v0, 0x1

    .line 48
    .line 49
    invoke-virtual {p0}, Lie/l;->r()Lee/b;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-interface {p1, v4, v0, v6, v3}, Lhe/d;->c(Lge/d;ILee/e;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lie/l;->a()Lge/d;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    add-int/lit8 v3, v5, 0x1

    .line 61
    .line 62
    invoke-virtual {p0}, Lie/l;->s()Lee/b;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-interface {p1, v0, v5, v4, v2}, Lhe/d;->c(Lge/d;ILee/e;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move v0, v3

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {p1, v1}, Lhe/d;->a(Lge/d;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public bridge synthetic l(Lhe/c;Ljava/lang/Object;II)V
    .locals 0

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lie/l;->t(Lhe/c;Ljava/util/Map;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic m(Lhe/c;ILjava/lang/Object;Z)V
    .locals 0

    .line 1
    check-cast p3, Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lie/l;->u(Lhe/c;ILjava/util/Map;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final r()Lee/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/l;->a:Lee/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final s()Lee/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lie/l;->b:Lee/b;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final t(Lhe/c;Ljava/util/Map;II)V
    .locals 4

    .line 1
    const-string v0, "decoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "builder"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-ltz p4, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v1, v0

    .line 17
    :goto_0
    if-eqz v1, :cond_4

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    mul-int/2addr p4, v1

    .line 21
    invoke-static {v0, p4}, Lod/g;->k(II)Lod/c;

    .line 22
    .line 23
    .line 24
    move-result-object p4

    .line 25
    invoke-static {p4, v1}, Lod/g;->i(Lod/a;I)Lod/a;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    invoke-virtual {p4}, Lod/a;->g()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p4}, Lod/a;->i()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p4}, Lod/a;->l()I

    .line 38
    .line 39
    .line 40
    move-result p4

    .line 41
    if-lez p4, :cond_1

    .line 42
    .line 43
    if-le v1, v2, :cond_2

    .line 44
    .line 45
    :cond_1
    if-gez p4, :cond_3

    .line 46
    .line 47
    if-gt v2, v1, :cond_3

    .line 48
    .line 49
    :cond_2
    :goto_1
    add-int v3, p3, v1

    .line 50
    .line 51
    invoke-virtual {p0, p1, v3, p2, v0}, Lie/l;->u(Lhe/c;ILjava/util/Map;Z)V

    .line 52
    .line 53
    .line 54
    if-eq v1, v2, :cond_3

    .line 55
    .line 56
    add-int/2addr v1, p4

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    return-void

    .line 59
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string p2, "Size must be known in advance when using READ_ALL"

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method

.method protected final u(Lhe/c;ILjava/util/Map;Z)V
    .locals 8

    .line 1
    const-string v0, "decoder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "builder"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lie/l;->a()Lge/d;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v4, p0, Lie/l;->a:Lee/b;

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    const/16 v6, 0x8

    .line 19
    .line 20
    const/4 v7, 0x0

    .line 21
    move-object v1, p1

    .line 22
    move v3, p2

    .line 23
    invoke-static/range {v1 .. v7}, Lhe/c$a;->c(Lhe/c;Lge/d;ILee/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x1

    .line 28
    if-eqz p4, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lie/l;->a()Lge/d;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    invoke-interface {p1, p4}, Lhe/c;->n(Lge/d;)I

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    add-int/lit8 v2, p2, 0x1

    .line 39
    .line 40
    if-ne p4, v2, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v1, 0x0

    .line 44
    :goto_0
    if-eqz v1, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string p3, "Value must follow key in a map, index for key: "

    .line 53
    .line 54
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p2, ", returned index for value: "

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p2

    .line 82
    :cond_2
    add-int/lit8 p4, p2, 0x1

    .line 83
    .line 84
    :goto_1
    move v3, p4

    .line 85
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_3

    .line 90
    .line 91
    iget-object p2, p0, Lie/l;->b:Lee/b;

    .line 92
    .line 93
    invoke-interface {p2}, Lee/b;->a()Lge/d;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-interface {p2}, Lge/d;->e()Lge/f;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    instance-of p2, p2, Lge/c;

    .line 102
    .line 103
    if-nez p2, :cond_3

    .line 104
    .line 105
    invoke-virtual {p0}, Lie/l;->a()Lge/d;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    iget-object p4, p0, Lie/l;->b:Lee/b;

    .line 110
    .line 111
    invoke-static {p3, v0}, Lyc/e0;->f(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-interface {p1, p2, v3, p4, v1}, Lhe/c;->j(Lge/d;ILee/a;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    goto :goto_2

    .line 120
    :cond_3
    invoke-virtual {p0}, Lie/l;->a()Lge/d;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iget-object v4, p0, Lie/l;->b:Lee/b;

    .line 125
    .line 126
    const/4 v5, 0x0

    .line 127
    const/16 v6, 0x8

    .line 128
    .line 129
    const/4 v7, 0x0

    .line 130
    move-object v1, p1

    .line 131
    invoke-static/range {v1 .. v7}, Lhe/c$a;->c(Lhe/c;Lge/d;ILee/a;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    :goto_2
    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    return-void
.end method
