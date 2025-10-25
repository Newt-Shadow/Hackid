.class public final synthetic Lcom/google/firebase/messaging/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm6/k;


# instance fields
.field public final synthetic a:Lcom/google/firebase/messaging/FirebaseMessaging;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/google/firebase/messaging/c1$a;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/c1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/t;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iput-object p2, p0, Lcom/google/firebase/messaging/t;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/messaging/t;->c:Lcom/google/firebase/messaging/c1$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lm6/Task;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/t;->a:Lcom/google/firebase/messaging/FirebaseMessaging;

    iget-object v1, p0, Lcom/google/firebase/messaging/t;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/firebase/messaging/t;->c:Lcom/google/firebase/messaging/c1$a;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->h(Lcom/google/firebase/messaging/FirebaseMessaging;Ljava/lang/String;Lcom/google/firebase/messaging/c1$a;Ljava/lang/String;)Lm6/Task;

    move-result-object p1

    return-object p1
.end method
