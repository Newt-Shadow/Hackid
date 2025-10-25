.class public abstract Llb/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static final a(I)I
    .locals 2

    .line 1
    div-int/lit8 v0, p0, 0x2

    .line 2
    .line 3
    xor-int/lit8 v1, p0, 0x2

    .line 4
    .line 5
    if-gez v1, :cond_0

    .line 6
    .line 7
    mul-int/lit8 v1, v0, 0x2

    .line 8
    .line 9
    if-eq v1, p0, :cond_0

    .line 10
    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static final b(Llb/e;Leb/d;)Z
    .locals 5

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "config"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Llb/e;->a()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x190

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    const-string v3, "Flushing failed with "

    .line 19
    .line 20
    if-ge v0, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Llb/e;->a()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p0, ", let\'s try again soon."

    .line 42
    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p1, p0}, Llb/i;->a(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return v2

    .line 54
    :cond_0
    invoke-virtual {p0}, Llb/e;->a()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/16 v1, 0x19d

    .line 59
    .line 60
    const/4 v4, 0x1

    .line 61
    if-ne v0, v1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p1}, Leb/d;->p()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-le v0, v4, :cond_1

    .line 68
    .line 69
    invoke-virtual {p1}, Leb/d;->p()I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-static {v0}, Llb/r;->a(I)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-virtual {p1, v0}, Leb/d;->T(I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Leb/d;->i()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {v0}, Llb/r;->a(I)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    invoke-virtual {p1, v0}, Leb/d;->P(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Leb/d;->o()Llb/i;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Llb/e;->a()I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string p0, ", let\'s try again with a smaller batch."

    .line 111
    .line 112
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    invoke-interface {p1, p0}, Llb/i;->a(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return v2

    .line 123
    :cond_1
    return v4
.end method
