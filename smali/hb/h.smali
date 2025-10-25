.class public final synthetic Lhb/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lib/j;

.field public final synthetic c:Lhb/l;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lib/j;Lhb/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhb/h;->a:Landroid/view/View;

    iput-object p2, p0, Lhb/h;->b:Lib/j;

    iput-object p3, p0, Lhb/h;->c:Lhb/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lhb/h;->a:Landroid/view/View;

    iget-object v1, p0, Lhb/h;->b:Lib/j;

    iget-object v2, p0, Lhb/h;->c:Lhb/l;

    invoke-static {v0, v1, v2}, Lhb/l;->a(Landroid/view/View;Lib/j;Lhb/l;)V

    return-void
.end method
