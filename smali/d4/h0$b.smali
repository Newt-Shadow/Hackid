.class public final Ld4/h0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld4/t$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld4/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Lx4/j$a;

.field private b:Ld4/b0$a;

.field private c:Lf3/x;

.field private d:Lx4/d0;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lx4/j$a;)V
    .locals 1

    .line 1
    new-instance v0, Lg3/h;

    invoke-direct {v0}, Lg3/h;-><init>()V

    invoke-direct {p0, p1, v0}, Ld4/h0$b;-><init>(Lx4/j$a;Lg3/p;)V

    return-void
.end method

.method public constructor <init>(Lx4/j$a;Ld4/b0$a;)V
    .locals 6

    .line 3
    new-instance v3, Lf3/l;

    invoke-direct {v3}, Lf3/l;-><init>()V

    new-instance v4, Lx4/v;

    invoke-direct {v4}, Lx4/v;-><init>()V

    const/high16 v5, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Ld4/h0$b;-><init>(Lx4/j$a;Ld4/b0$a;Lf3/x;Lx4/d0;I)V

    return-void
.end method

.method public constructor <init>(Lx4/j$a;Ld4/b0$a;Lf3/x;Lx4/d0;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Ld4/h0$b;->a:Lx4/j$a;

    .line 6
    iput-object p2, p0, Ld4/h0$b;->b:Ld4/b0$a;

    .line 7
    iput-object p3, p0, Ld4/h0$b;->c:Lf3/x;

    .line 8
    iput-object p4, p0, Ld4/h0$b;->d:Lx4/d0;

    .line 9
    iput p5, p0, Ld4/h0$b;->e:I

    return-void
.end method

.method public constructor <init>(Lx4/j$a;Lg3/p;)V
    .locals 1

    .line 2
    new-instance v0, Ld4/i0;

    invoke-direct {v0, p2}, Ld4/i0;-><init>(Lg3/p;)V

    invoke-direct {p0, p1, v0}, Ld4/h0$b;-><init>(Lx4/j$a;Ld4/b0$a;)V

    return-void
.end method

.method public static synthetic a(Lg3/p;Lc3/t3;)Ld4/b0;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ld4/h0$b;->c(Lg3/p;Lc3/t3;)Ld4/b0;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Lg3/p;Lc3/t3;)Ld4/b0;
    .locals 0

    .line 1
    new-instance p1, Ld4/c;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Ld4/c;-><init>(Lg3/p;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method


# virtual methods
.method public b(Lb3/f2;)Ld4/h0;
    .locals 8

    .line 1
    iget-object v0, p1, Lb3/f2;->b:Lb3/f2$h;

    .line 2
    .line 3
    invoke-static {v0}, Ly4/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lb3/f2;->b:Lb3/f2$h;

    .line 7
    .line 8
    iget-object v1, v0, Lb3/f2$h;->h:Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Ld4/h0$b;->g:Ljava/lang/Object;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    move v1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, v3

    .line 21
    :goto_0
    iget-object v0, v0, Lb3/f2$h;->e:Ljava/lang/String;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Ld4/h0$b;->f:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v2, v3

    .line 31
    :goto_1
    if-eqz v1, :cond_2

    .line 32
    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lb3/f2;->b()Lb3/f2$c;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Ld4/h0$b;->g:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lb3/f2$c;->d(Ljava/lang/Object;)Lb3/f2$c;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget-object v0, p0, Ld4/h0$b;->f:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lb3/f2$c;->b(Ljava/lang/String;)Lb3/f2$c;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lb3/f2$c;->a()Lb3/f2;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    if-eqz v1, :cond_3

    .line 57
    .line 58
    invoke-virtual {p1}, Lb3/f2;->b()Lb3/f2$c;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v0, p0, Ld4/h0$b;->g:Ljava/lang/Object;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lb3/f2$c;->d(Ljava/lang/Object;)Lb3/f2$c;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lb3/f2$c;->a()Lb3/f2;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    if-eqz v2, :cond_4

    .line 74
    .line 75
    invoke-virtual {p1}, Lb3/f2;->b()Lb3/f2$c;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iget-object v0, p0, Ld4/h0$b;->f:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lb3/f2$c;->b(Ljava/lang/String;)Lb3/f2$c;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lb3/f2$c;->a()Lb3/f2;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :cond_4
    :goto_2
    move-object v1, p1

    .line 90
    new-instance p1, Ld4/h0;

    .line 91
    .line 92
    iget-object v2, p0, Ld4/h0$b;->a:Lx4/j$a;

    .line 93
    .line 94
    iget-object v3, p0, Ld4/h0$b;->b:Ld4/b0$a;

    .line 95
    .line 96
    iget-object v0, p0, Ld4/h0$b;->c:Lf3/x;

    .line 97
    .line 98
    invoke-interface {v0, v1}, Lf3/x;->a(Lb3/f2;)Lf3/v;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    iget-object v5, p0, Ld4/h0$b;->d:Lx4/d0;

    .line 103
    .line 104
    iget v6, p0, Ld4/h0$b;->e:I

    .line 105
    .line 106
    const/4 v7, 0x0

    .line 107
    move-object v0, p1

    .line 108
    invoke-direct/range {v0 .. v7}, Ld4/h0;-><init>(Lb3/f2;Lx4/j$a;Ld4/b0$a;Lf3/v;Lx4/d0;ILd4/h0$a;)V

    .line 109
    .line 110
    .line 111
    return-object p1
.end method
