.class public final synthetic Lcom/google/firebase/messaging/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/messaging/x0$a;


# instance fields
.field public final synthetic a:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/firebase/messaging/c1$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/c1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/s;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p2, p0, Lcom/google/firebase/messaging/s;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/messaging/s;->c:Lcom/google/firebase/messaging/c1$a;

    return-void
.end method


# virtual methods
.method public final start()Lm6/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/s;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v1, p0, Lcom/google/firebase/messaging/s;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/messaging/s;->c:Lcom/google/firebase/messaging/c1$a;

    invoke-static {v0, v1, v2}, Lcom/google/firebase/messaging/FirebaseMessaging;->g(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/c1$a;)Lm6/Task;

    move-result-object v0

    return-object v0
.end method
