.class public final Ld0/c1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld0/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ld0/c1$e;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Ld0/c1$d;

    invoke-direct {v0}, Ld0/c1$d;-><init>()V

    iput-object v0, p0, Ld0/c1$a;->a:Ld0/c1$e;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Ld0/c1$c;

    invoke-direct {v0}, Ld0/c1$c;-><init>()V

    iput-object v0, p0, Ld0/c1$a;->a:Ld0/c1$e;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ld0/c1$b;

    invoke-direct {v0}, Ld0/c1$b;-><init>()V

    iput-object v0, p0, Ld0/c1$a;->a:Ld0/c1$e;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ld0/c1;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 8
    new-instance v0, Ld0/c1$d;

    invoke-direct {v0, p1}, Ld0/c1$d;-><init>(Ld0/c1;)V

    iput-object v0, p0, Ld0/c1$a;->a:Ld0/c1$e;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 9
    new-instance v0, Ld0/c1$c;

    invoke-direct {v0, p1}, Ld0/c1$c;-><init>(Ld0/c1;)V

    iput-object v0, p0, Ld0/c1$a;->a:Ld0/c1$e;

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Ld0/c1$b;

    invoke-direct {v0, p1}, Ld0/c1$b;-><init>(Ld0/c1;)V

    iput-object v0, p0, Ld0/c1$a;->a:Ld0/c1$e;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ld0/c1;
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/c1$a;->a:Ld0/c1$e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ld0/c1$e;->b()Ld0/c1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b(Lv/b;)Ld0/c1$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/c1$a;->a:Ld0/c1$e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ld0/c1$e;->d(Lv/b;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public c(Lv/b;)Ld0/c1$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ld0/c1$a;->a:Ld0/c1$e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ld0/c1$e;->f(Lv/b;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
