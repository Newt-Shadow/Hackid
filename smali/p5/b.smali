.class public final synthetic Lp5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/q;


# instance fields
.field public final synthetic a:Ln5/u;


# direct methods
.method public synthetic constructor <init>(Ln5/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp5/b;->a:Ln5/u;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lp5/e;

    .line 2
    .line 3
    check-cast p2, Lm6/l;

    .line 4
    .line 5
    sget v0, Lp5/d;->n:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ln5/c;->D()Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lp5/a;

    .line 12
    .line 13
    iget-object v0, p0, Lp5/b;->a:Ln5/u;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lp5/a;->g1(Ln5/u;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p2, p1}, Lm6/l;->c(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
