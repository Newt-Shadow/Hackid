.class public final Lxd/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lad/i;


# instance fields
.field private final synthetic a:Lad/i;

.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lad/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lxd/i;->a:Lad/i;

    .line 5
    .line 6
    iput-object p1, p0, Lxd/i;->b:Ljava/lang/Throwable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lad/i$c;)Lad/i$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lxd/i;->a:Lad/i;

    invoke-interface {v0, p1}, Lad/i;->a(Lad/i$c;)Lad/i$b;

    move-result-object p1

    return-object p1
.end method

.method public e(Lad/i;)Lad/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lxd/i;->a:Lad/i;

    invoke-interface {v0, p1}, Lad/i;->e(Lad/i;)Lad/i;

    move-result-object p1

    return-object p1
.end method

.method public g(Lad/i$c;)Lad/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lxd/i;->a:Lad/i;

    invoke-interface {v0, p1}, Lad/i;->g(Lad/i$c;)Lad/i;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/Object;Lid/Function2;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lxd/i;->a:Lad/i;

    invoke-interface {v0, p1, p2}, Lad/i;->k(Ljava/lang/Object;Lid/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
