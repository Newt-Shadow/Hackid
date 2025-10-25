.class public final Lwd/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwd/m;->a(Lwd/d;Lid/Function2;)Lwd/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lwd/d;

.field final synthetic b:Lid/Function2;


# direct methods
.method public constructor <init>(Lwd/d;Lid/Function2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwd/m$a;->a:Lwd/d;

    .line 2
    .line 3
    iput-object p2, p0, Lwd/m$a;->b:Lid/Function2;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public collect(Lwd/e;Lad/e;)Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lkotlin/jvm/internal/z;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/z;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lwd/m$a;->a:Lwd/d;

    .line 7
    .line 8
    new-instance v2, Lwd/m$b;

    .line 9
    .line 10
    iget-object v3, p0, Lwd/m$a;->b:Lid/Function2;

    .line 11
    .line 12
    invoke-direct {v2, v0, p1, v3}, Lwd/m$b;-><init>(Lkotlin/jvm/internal/z;Lwd/e;Lid/Function2;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2, p2}, Lwd/d;->collect(Lwd/e;Lad/e;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-ne p1, p2, :cond_0

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 27
    .line 28
    return-object p1
.end method
