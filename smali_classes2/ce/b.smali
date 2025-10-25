.class public final synthetic Lce/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/p;


# instance fields
.field public final synthetic a:Lce/f;


# direct methods
.method public synthetic constructor <init>(Lce/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lce/b;->a:Lce/f;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lce/b;->a:Lce/f;

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, p2, p3}, Lce/f;->u(Lce/f;Lbe/a;Ljava/lang/Object;Ljava/lang/Object;)Lid/p;

    move-result-object p1

    return-object p1
.end method
