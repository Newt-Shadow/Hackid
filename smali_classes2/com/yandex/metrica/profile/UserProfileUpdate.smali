.class public Lcom/yandex/metrica/profile/UserProfileUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/yandex/metrica/impl/ob/bf;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/yandex/metrica/impl/ob/bf;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/bf;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/yandex/metrica/profile/UserProfileUpdate;->a:Lcom/yandex/metrica/impl/ob/bf;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getUserProfileUpdatePatcher()Lcom/yandex/metrica/impl/ob/bf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/profile/UserProfileUpdate;->a:Lcom/yandex/metrica/impl/ob/bf;

    .line 2
    .line 3
    return-object v0
.end method
