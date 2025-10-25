.class public final synthetic Lcom/google/firebase/messaging/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/c;


# instance fields
.field public final synthetic a:Lcom/google/firebase/messaging/x0;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/x0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/w0;->a:Lcom/google/firebase/messaging/x0;

    iput-object p2, p0, Lcom/google/firebase/messaging/w0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lm6/Task;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/w0;->a:Lcom/google/firebase/messaging/x0;

    iget-object v1, p0, Lcom/google/firebase/messaging/w0;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/messaging/x0;->a(Lcom/google/firebase/messaging/x0;Ljava/lang/String;Lm6/Task;)Lm6/Task;

    move-result-object p1

    return-object p1
.end method
