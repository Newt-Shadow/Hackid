.class public final synthetic Lcom/google/firebase/messaging/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/firebase/messaging/i;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Lm6/l;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/i;Landroid/content/Intent;Lm6/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/g;->a:Lcom/google/firebase/messaging/i;

    iput-object p2, p0, Lcom/google/firebase/messaging/g;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/firebase/messaging/g;->c:Lm6/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/g;->a:Lcom/google/firebase/messaging/i;

    iget-object v1, p0, Lcom/google/firebase/messaging/g;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/firebase/messaging/g;->c:Lm6/l;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/messaging/i;->b(Lcom/google/firebase/messaging/i;Landroid/content/Intent;Lm6/l;)V

    return-void
.end method
