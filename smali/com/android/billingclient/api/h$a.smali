.class public Lcom/android/billingclient/api/h$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lc2/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lcom/android/billingclient/api/h$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/h;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/billingclient/api/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/android/billingclient/api/h;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/android/billingclient/api/h$a;->a:I

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/android/billingclient/api/h;->e(Lcom/android/billingclient/api/h;I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/billingclient/api/h$a;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/android/billingclient/api/h;->d(Lcom/android/billingclient/api/h;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/android/billingclient/api/h$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/h$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Lcom/android/billingclient/api/h$a;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/h$a;->a:I

    return-object p0
.end method
