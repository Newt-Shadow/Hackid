.class public final Lxd/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/e;


# instance fields
.field private final a:Lvd/x;


# direct methods
.method public constructor <init>(Lvd/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lxd/s;->a:Lvd/x;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lxd/s;->a:Lvd/x;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lvd/x;->y(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 15
    .line 16
    return-object p1
.end method
