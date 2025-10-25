.class public final synthetic Lcom/google/firebase/messaging/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk7/g;


# instance fields
.field public final synthetic a:Lk7/e0;


# direct methods
.method public synthetic constructor <init>(Lk7/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/e0;->a:Lk7/e0;

    return-void
.end method


# virtual methods
.method public final a(Lk7/d;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/messaging/e0;->a:Lk7/e0;

    invoke-static {v0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingRegistrar;->a(Lk7/e0;Lk7/d;)Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    return-object p1
.end method
