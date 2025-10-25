.class final Lu8/t0$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu8/t0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu8/t0;


# direct methods
.method constructor <init>(Lu8/t0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu8/t0$a$b;->a:Lu8/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lu8/e0;Lad/e;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lu8/t0$a$b;->a:Lu8/t0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lu8/t0;->r(Lu8/e0;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lu8/e0;->f()Lu8/h0;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lu8/h0;->b()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lu8/t0$a$b;->a:Lu8/t0;

    .line 15
    .line 16
    sget-object v1, Lu8/t0$b;->a:Lu8/t0$b;

    .line 17
    .line 18
    invoke-static {v0, p1, v1, p2}, Lu8/t0;->l(Lu8/t0;Ljava/lang/String;Lu8/t0$b;Lad/e;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {}, Lbd/b;->e()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-ne p1, p2, :cond_0

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_0
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 30
    .line 31
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lu8/e0;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lu8/t0$a$b;->a(Lu8/e0;Lad/e;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
