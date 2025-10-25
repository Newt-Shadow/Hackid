.class public final synthetic Lvd/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/p;


# instance fields
.field public final synthetic a:Lvd/e;


# direct methods
.method public synthetic constructor <init>(Lvd/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvd/c;->a:Lvd/e;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lvd/c;->a:Lvd/e;

    invoke-static {p1}, Landroid/support/v4/media/session/b;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, p2, p3}, Lvd/e;->c(Lvd/e;Lbe/a;Ljava/lang/Object;Ljava/lang/Object;)Lid/p;

    move-result-object p1

    return-object p1
.end method
