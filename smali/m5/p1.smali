.class final Lm5/p1;
.super Lm5/o0;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lm5/q1;


# direct methods
.method constructor <init>(Lm5/q1;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm5/p1;->b:Lm5/q1;

    iput-object p2, p0, Lm5/p1;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Lm5/o0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm5/p1;->b:Lm5/q1;

    .line 2
    .line 3
    iget-object v0, v0, Lm5/q1;->b:Lm5/r1;

    .line 4
    .line 5
    invoke-static {v0}, Lm5/r1;->r(Lm5/r1;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lm5/p1;->a:Landroid/app/Dialog;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lm5/p1;->a:Landroid/app/Dialog;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
