.class public final Lyb/c$a;
.super Lzb/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/c;->onQueryPurchasesResponse(Lcom/android/billingclient/api/h;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lyb/c;

.field final synthetic b:Lcom/android/billingclient/api/h;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lyb/c;Lcom/android/billingclient/api/h;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyb/c$a;->a:Lyb/c;

    .line 2
    .line 3
    iput-object p2, p0, Lyb/c$a;->b:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    iput-object p3, p0, Lyb/c$a;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p0}, Lzb/f;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyb/c$a;->a:Lyb/c;

    .line 2
    .line 3
    iget-object v1, p0, Lyb/c$a;->b:Lcom/android/billingclient/api/h;

    .line 4
    .line 5
    iget-object v2, p0, Lyb/c$a;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lyb/c;->d(Lyb/c;Lcom/android/billingclient/api/h;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lyb/c$a;->a:Lyb/c;

    .line 11
    .line 12
    invoke-static {v0}, Lyb/c;->c(Lyb/c;)Lyb/g;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lyb/c$a;->a:Lyb/c;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lyb/g;->c(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
