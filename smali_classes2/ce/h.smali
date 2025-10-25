.class public final synthetic Lce/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/p;


# instance fields
.field public final synthetic a:Lce/i;


# direct methods
.method public synthetic constructor <init>(Lce/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lce/h;->a:Lce/i;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lce/h;->a:Lce/i;

    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Lxc/t;

    check-cast p3, Lad/i;

    invoke-static {v0, p1, p2, p3}, Lce/i;->e(Lce/i;Ljava/lang/Throwable;Lxc/t;Lad/i;)Lxc/t;

    move-result-object p1

    return-object p1
.end method
