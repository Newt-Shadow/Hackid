.class public final synthetic Lz5/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/q;


# instance fields
.field public final synthetic a:Lz5/c;


# direct methods
.method public synthetic constructor <init>(Lz5/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz5/k;->a:Lz5/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lz5/j;

    .line 2
    .line 3
    check-cast p2, Lm6/l;

    .line 4
    .line 5
    invoke-virtual {p1}, Ln5/c;->D()Landroid/os/IInterface;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lz5/g;

    .line 10
    .line 11
    new-instance v0, Lz5/m;

    .line 12
    .line 13
    iget-object v1, p0, Lz5/k;->a:Lz5/c;

    .line 14
    .line 15
    invoke-direct {v0, v1, p2}, Lz5/m;-><init>(Lz5/c;Lm6/l;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lz5/g;->f1(Lz5/i;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
