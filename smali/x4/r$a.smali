.class public final Lx4/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx4/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx4/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lx4/j$a;

.field private c:Lx4/m0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lx4/s$b;

    invoke-direct {v0}, Lx4/s$b;-><init>()V

    invoke-direct {p0, p1, v0}, Lx4/r$a;-><init>(Landroid/content/Context;Lx4/j$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lx4/j$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lx4/r$a;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lx4/r$a;->b:Lx4/j$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lx4/j;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lx4/r$a;->b()Lx4/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public b()Lx4/r;
    .locals 3

    .line 1
    new-instance v0, Lx4/r;

    .line 2
    .line 3
    iget-object v1, p0, Lx4/r$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lx4/r$a;->b:Lx4/j$a;

    .line 6
    .line 7
    invoke-interface {v2}, Lx4/j$a;->a()Lx4/j;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lx4/r;-><init>(Landroid/content/Context;Lx4/j;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lx4/r$a;->c:Lx4/m0;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lx4/r;->d(Lx4/m0;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object v0
.end method
