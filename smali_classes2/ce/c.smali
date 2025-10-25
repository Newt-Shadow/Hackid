.class public final synthetic Lce/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/p;


# instance fields
.field public final synthetic a:Lce/f;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lce/f;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lce/c;->a:Lce/f;

    iput-object p2, p0, Lce/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lce/c;->a:Lce/f;

    iget-object v1, p0, Lce/c;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    check-cast p3, Lad/i;

    invoke-static {v0, v1, p1, p2, p3}, Lce/f;->v(Lce/f;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/Object;Lad/i;)Lxc/t;

    move-result-object p1

    return-object p1
.end method
