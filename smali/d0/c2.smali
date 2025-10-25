.class public final Ld0/c2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld0/c2$f;,
        Ld0/c2$g;,
        Ld0/c2$d;,
        Ld0/c2$c;,
        Ld0/c2$b;,
        Ld0/c2$a;,
        Ld0/c2$e;
    }
.end annotation


# instance fields
.field private final a:Ld0/c2$g;


# direct methods
.method public constructor <init>(Landroid/view/Window;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ld0/l0;

    .line 5
    .line 6
    invoke-direct {v0, p2}, Ld0/l0;-><init>(Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v1, 0x23

    .line 12
    .line 13
    if-lt p2, v1, :cond_0

    .line 14
    .line 15
    new-instance p2, Ld0/c2$f;

    .line 16
    .line 17
    invoke-direct {p2, p1, p0, v0}, Ld0/c2$f;-><init>(Landroid/view/Window;Ld0/c2;Ld0/l0;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Ld0/c2;->a:Ld0/c2$g;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/16 v1, 0x1e

    .line 24
    .line 25
    if-lt p2, v1, :cond_1

    .line 26
    .line 27
    new-instance p2, Ld0/c2$d;

    .line 28
    .line 29
    invoke-direct {p2, p1, p0, v0}, Ld0/c2$d;-><init>(Landroid/view/Window;Ld0/c2;Ld0/l0;)V

    .line 30
    .line 31
    .line 32
    iput-object p2, p0, Ld0/c2;->a:Ld0/c2$g;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/16 v1, 0x1a

    .line 36
    .line 37
    if-lt p2, v1, :cond_2

    .line 38
    .line 39
    new-instance p2, Ld0/c2$c;

    .line 40
    .line 41
    invoke-direct {p2, p1, v0}, Ld0/c2$c;-><init>(Landroid/view/Window;Ld0/l0;)V

    .line 42
    .line 43
    .line 44
    iput-object p2, p0, Ld0/c2;->a:Ld0/c2$g;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    new-instance p2, Ld0/c2$b;

    .line 48
    .line 49
    invoke-direct {p2, p1, v0}, Ld0/c2$b;-><init>(Landroid/view/Window;Ld0/l0;)V

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Ld0/c2;->a:Ld0/c2$g;

    .line 53
    .line 54
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/c2;->a:Ld0/c2$g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ld0/c2$g;->a(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/c2;->a:Ld0/c2$g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ld0/c2$g;->b(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
