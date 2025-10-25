.class Lxb/a$a;
.super Lzb/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxb/a;->onBillingSetupFinished(Lcom/android/billingclient/api/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/billingclient/api/h;

.field final synthetic b:Lxb/a;


# direct methods
.method constructor <init>(Lxb/a;Lcom/android/billingclient/api/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxb/a$a;->b:Lxb/a;

    .line 2
    .line 3
    iput-object p2, p0, Lxb/a$a;->a:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    invoke-direct {p0}, Lzb/f;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lxb/a$a;->b:Lxb/a;

    .line 2
    .line 3
    iget-object v1, p0, Lxb/a$a;->a:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lxb/a;->c(Lxb/a;Lcom/android/billingclient/api/h;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
