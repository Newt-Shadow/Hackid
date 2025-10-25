.class public final synthetic Lhb/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lhb/l;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/view/Window;


# direct methods
.method public synthetic constructor <init>(Lhb/l;Landroid/view/View;Landroid/view/Window;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhb/m;->a:Lhb/l;

    iput-object p2, p0, Lhb/m;->b:Landroid/view/View;

    iput-object p3, p0, Lhb/m;->c:Landroid/view/Window;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lhb/m;->a:Lhb/l;

    iget-object v1, p0, Lhb/m;->b:Landroid/view/View;

    iget-object v2, p0, Lhb/m;->c:Landroid/view/Window;

    invoke-static {v0, v1, v2}, Lhb/l$b$b;->a(Lhb/l;Landroid/view/View;Landroid/view/Window;)V

    return-void
.end method
