.class public final synthetic Ltd/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/p;


# instance fields
.field public final synthetic a:Lid/l;


# direct methods
.method public synthetic constructor <init>(Lid/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltd/m;->a:Lid/l;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ltd/m;->a:Lid/l;

    check-cast p1, Ljava/lang/Throwable;

    check-cast p3, Lad/i;

    invoke-static {v0, p1, p2, p3}, Ltd/n;->j(Lid/l;Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)Lxc/t;

    move-result-object p1

    return-object p1
.end method
