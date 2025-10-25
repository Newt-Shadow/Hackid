.class public Lm5/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lm5/q;

.field private b:Lm5/q;

.field private c:Ljava/lang/Runnable;

.field private d:Lm5/j;

.field private e:[Ll5/d;

.field private f:Z

.field private g:I


# direct methods
.method synthetic constructor <init>(Lm5/z0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lm5/w0;->a:Lm5/w0;

    iput-object p1, p0, Lm5/p$a;->c:Ljava/lang/Runnable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm5/p$a;->f:Z

    return-void
.end method

.method static bridge synthetic f(Lm5/p$a;)Lm5/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lm5/p$a;->a:Lm5/q;

    return-object p0
.end method

.method static bridge synthetic g(Lm5/p$a;)Lm5/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lm5/p$a;->b:Lm5/q;

    return-object p0
.end method


# virtual methods
.method public a()Lm5/p;
    .locals 9

    .line 1
    iget-object v0, p0, Lm5/p$a;->a:Lm5/q;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    const-string v3, "Must set register function"

    .line 11
    .line 12
    invoke-static {v0, v3}, Ln5/q;->b(ZLjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lm5/p$a;->b:Lm5/q;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    move v0, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move v0, v2

    .line 22
    :goto_1
    const-string v3, "Must set unregister function"

    .line 23
    .line 24
    invoke-static {v0, v3}, Ln5/q;->b(ZLjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lm5/p$a;->d:Lm5/j;

    .line 28
    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    move v1, v2

    .line 33
    :goto_2
    const-string v0, "Must set holder"

    .line 34
    .line 35
    invoke-static {v1, v0}, Ln5/q;->b(ZLjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lm5/p$a;->d:Lm5/j;

    .line 39
    .line 40
    invoke-virtual {v0}, Lm5/j;->b()Lm5/j$a;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "Key must not be null"

    .line 45
    .line 46
    invoke-static {v0, v1}, Ln5/q;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Lm5/j$a;

    .line 51
    .line 52
    new-instance v1, Lm5/p;

    .line 53
    .line 54
    new-instance v8, Lm5/x0;

    .line 55
    .line 56
    iget-object v4, p0, Lm5/p$a;->d:Lm5/j;

    .line 57
    .line 58
    iget-object v5, p0, Lm5/p$a;->e:[Ll5/d;

    .line 59
    .line 60
    iget-boolean v6, p0, Lm5/p$a;->f:Z

    .line 61
    .line 62
    iget v7, p0, Lm5/p$a;->g:I

    .line 63
    .line 64
    move-object v2, v8

    .line 65
    move-object v3, p0

    .line 66
    invoke-direct/range {v2 .. v7}, Lm5/x0;-><init>(Lm5/p$a;Lm5/j;[Ll5/d;ZI)V

    .line 67
    .line 68
    .line 69
    new-instance v2, Lm5/y0;

    .line 70
    .line 71
    invoke-direct {v2, p0, v0}, Lm5/y0;-><init>(Lm5/p$a;Lm5/j$a;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lm5/p$a;->c:Ljava/lang/Runnable;

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-direct {v1, v8, v2, v0, v3}, Lm5/p;-><init>(Lm5/o;Lm5/w;Ljava/lang/Runnable;Lm5/a1;)V

    .line 78
    .line 79
    .line 80
    return-object v1
.end method

.method public b(Lm5/q;)Lm5/p$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lm5/p$a;->a:Lm5/q;

    return-object p0
.end method

.method public c(I)Lm5/p$a;
    .locals 0

    .line 1
    iput p1, p0, Lm5/p$a;->g:I

    return-object p0
.end method

.method public d(Lm5/q;)Lm5/p$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lm5/p$a;->b:Lm5/q;

    return-object p0
.end method

.method public e(Lm5/j;)Lm5/p$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lm5/p$a;->d:Lm5/j;

    return-object p0
.end method
