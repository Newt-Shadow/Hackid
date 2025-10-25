.class public final synthetic Lcom/google/firebase/messaging/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/f;


# instance fields
.field public final synthetic a:Lcom/google/firebase/messaging/p1$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/p1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/l1;->a:Lcom/google/firebase/messaging/p1$a;

    return-void
.end method


# virtual methods
.method public final onComplete(Lm6/Task;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/l1;->a:Lcom/google/firebase/messaging/p1$a;

    invoke-static {v0, p1}, Lcom/google/firebase/messaging/m1;->a(Lcom/google/firebase/messaging/p1$a;Lm6/Task;)V

    return-void
.end method
