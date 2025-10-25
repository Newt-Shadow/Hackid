.class public final synthetic Landroidx/activity/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lid/a;


# direct methods
.method public synthetic constructor <init>(Lid/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/x;->a:Lid/a;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/x;->a:Lid/a;

    invoke-static {v0}, Landroidx/activity/w$f;->a(Lid/a;)V

    return-void
.end method
