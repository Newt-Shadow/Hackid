.class public final Li4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li4/j;


# static fields
.field private static final d:Lg3/y;


# instance fields
.field final a:Lg3/k;

.field private final b:Lb3/x1;

.field private final c:Ly4/m0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg3/y;

    .line 2
    .line 3
    invoke-direct {v0}, Lg3/y;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li4/b;->d:Lg3/y;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lg3/k;Lb3/x1;Ly4/m0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li4/b;->a:Lg3/k;

    .line 5
    .line 6
    iput-object p2, p0, Li4/b;->b:Lb3/x1;

    .line 7
    .line 8
    iput-object p3, p0, Li4/b;->c:Ly4/m0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Li4/b;->a:Lg3/k;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-interface {v0, v1, v2, v1, v2}, Lg3/k;->b(JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Lg3/l;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Li4/b;->a:Lg3/k;

    .line 2
    .line 3
    sget-object v1, Li4/b;->d:Lg3/y;

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Lg3/k;->g(Lg3/l;Lg3/y;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public c(Lg3/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li4/b;->a:Lg3/k;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lg3/k;->c(Lg3/m;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li4/b;->a:Lg3/k;

    .line 2
    .line 3
    instance-of v1, v0, Lq3/h;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    instance-of v1, v0, Lq3/b;

    .line 8
    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    instance-of v1, v0, Lq3/e;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    instance-of v0, v0, Ln3/f;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    :goto_1
    return v0
.end method

.method public e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Li4/b;->a:Lg3/k;

    .line 2
    .line 3
    instance-of v1, v0, Lq3/h0;

    .line 4
    .line 5
    if-nez v1, :cond_1

    .line 6
    .line 7
    instance-of v0, v0, Lo3/g;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public f()Li4/j;
    .locals 4

    .line 1
    invoke-virtual {p0}, Li4/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Li4/b;->a:Lg3/k;

    .line 11
    .line 12
    instance-of v1, v0, Li4/t;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v0, Li4/t;

    .line 17
    .line 18
    iget-object v1, p0, Li4/b;->b:Lb3/x1;

    .line 19
    .line 20
    iget-object v1, v1, Lb3/x1;->c:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v2, p0, Li4/b;->c:Ly4/m0;

    .line 23
    .line 24
    invoke-direct {v0, v1, v2}, Li4/t;-><init>(Ljava/lang/String;Ly4/m0;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    instance-of v1, v0, Lq3/h;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    new-instance v0, Lq3/h;

    .line 33
    .line 34
    invoke-direct {v0}, Lq3/h;-><init>()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    instance-of v1, v0, Lq3/b;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    new-instance v0, Lq3/b;

    .line 43
    .line 44
    invoke-direct {v0}, Lq3/b;-><init>()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    instance-of v1, v0, Lq3/e;

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    new-instance v0, Lq3/e;

    .line 53
    .line 54
    invoke-direct {v0}, Lq3/e;-><init>()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    instance-of v0, v0, Ln3/f;

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    new-instance v0, Ln3/f;

    .line 63
    .line 64
    invoke-direct {v0}, Ln3/f;-><init>()V

    .line 65
    .line 66
    .line 67
    :goto_0
    new-instance v1, Li4/b;

    .line 68
    .line 69
    iget-object v2, p0, Li4/b;->b:Lb3/x1;

    .line 70
    .line 71
    iget-object v3, p0, Li4/b;->c:Ly4/m0;

    .line 72
    .line 73
    invoke-direct {v1, v0, v2, v3}, Li4/b;-><init>(Lg3/k;Lb3/x1;Ly4/m0;)V

    .line 74
    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 78
    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "Unexpected extractor type for recreation: "

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Li4/b;->a:Lg3/k;

    .line 90
    .line 91
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v0
.end method
