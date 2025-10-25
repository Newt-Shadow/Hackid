.class public final synthetic Lk5/h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/c;


# instance fields
.field public final synthetic a:Lk5/c;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lk5/c;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5/h0;->a:Lk5/c;

    iput-object p2, p0, Lk5/h0;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a(Lm6/Task;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lk5/h0;->a:Lk5/c;

    iget-object v1, p0, Lk5/h0;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, p1}, Lk5/c;->f(Landroid/os/Bundle;Lm6/Task;)Lm6/Task;

    move-result-object p1

    return-object p1
.end method
