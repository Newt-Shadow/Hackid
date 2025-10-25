.class public final Lo0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/i;


# instance fields
.field private final a:Lj0/i;


# direct methods
.method public constructor <init>(Lj0/i;)V
    .locals 1

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lo0/d;->a:Lj0/i;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Lid/Function2;Lad/e;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lo0/d;->a:Lj0/i;

    .line 2
    .line 3
    new-instance v1, Lo0/d$a;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p1, v2}, Lo0/d$a;-><init>(Lid/Function2;Lad/e;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1, p2}, Lj0/i;->a(Lid/Function2;Lad/e;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public getData()Lwd/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lo0/d;->a:Lj0/i;

    invoke-interface {v0}, Lj0/i;->getData()Lwd/d;

    move-result-object v0

    return-object v0
.end method
