.class final Lwd/r;
.super Lwd/a;
.source "SourceFile"


# instance fields
.field private final a:Lid/Function2;


# direct methods
.method public constructor <init>(Lid/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lwd/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwd/r;->a:Lid/Function2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lwd/e;Lad/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lwd/r;->a:Lid/Function2;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lid/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
