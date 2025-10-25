.class public final Lj0/k$d$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj0/k$d$e;->collect(Lwd/e;Lad/e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwd/e;


# direct methods
.method public constructor <init>(Lwd/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj0/k$d$e$a;->a:Lwd/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 4

    .line 1
    instance-of v0, p2, Lj0/k$d$e$a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lj0/k$d$e$a$a;

    .line 7
    .line 8
    iget v1, v0, Lj0/k$d$e$a$a;->b:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lj0/k$d$e$a$a;->b:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lj0/k$d$e$a$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lj0/k$d$e$a$a;-><init>(Lj0/k$d$e$a;Lad/e;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lj0/k$d$e$a$a;->a:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lj0/k$d$e$a$a;->b:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p2}, Lxc/m;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p0, Lj0/k$d$e$a;->a:Lwd/e;

    .line 54
    .line 55
    check-cast p1, Lj0/i0;

    .line 56
    .line 57
    instance-of v2, p1, Lj0/b0;

    .line 58
    .line 59
    if-nez v2, :cond_7

    .line 60
    .line 61
    instance-of v2, p1, Lj0/f;

    .line 62
    .line 63
    if-eqz v2, :cond_4

    .line 64
    .line 65
    check-cast p1, Lj0/f;

    .line 66
    .line 67
    invoke-virtual {p1}, Lj0/f;->c()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput v3, v0, Lj0/k$d$e$a$a;->b:I

    .line 72
    .line 73
    invoke-interface {p2, p1, v0}, Lwd/e;->emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-ne p1, v1, :cond_3

    .line 78
    .line 79
    return-object v1

    .line 80
    :cond_3
    :goto_1
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 81
    .line 82
    return-object p1

    .line 83
    :cond_4
    instance-of p2, p1, Lj0/r;

    .line 84
    .line 85
    if-eqz p2, :cond_5

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    instance-of v3, p1, Lj0/m0;

    .line 89
    .line 90
    :goto_2
    if-eqz v3, :cond_6

    .line 91
    .line 92
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 93
    .line 94
    const-string p2, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    throw p1

    .line 104
    :cond_6
    new-instance p1, Lxc/i;

    .line 105
    .line 106
    invoke-direct {p1}, Lxc/i;-><init>()V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_7
    check-cast p1, Lj0/b0;

    .line 111
    .line 112
    invoke-virtual {p1}, Lj0/b0;->b()Ljava/lang/Throwable;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    throw p1
.end method
