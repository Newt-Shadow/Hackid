.class public final synthetic Lxd/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/Function2;


# instance fields
.field public final synthetic a:Lxd/o;


# direct methods
.method public synthetic constructor <init>(Lxd/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxd/q;->a:Lxd/o;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lxd/q;->a:Lxd/o;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Lad/i$b;

    invoke-static {v0, p1, p2}, Lxd/r;->a(Lxd/o;ILad/i$b;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
