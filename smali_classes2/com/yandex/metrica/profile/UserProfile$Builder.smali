.class public Lcom/yandex/metrica/profile/UserProfile$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/metrica/profile/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/util/LinkedList;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/yandex/metrica/profile/UserProfile$Builder;->a:Ljava/util/LinkedList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public apply(Lcom/yandex/metrica/profile/UserProfileUpdate;)Lcom/yandex/metrica/profile/UserProfile$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/metrica/profile/UserProfileUpdate<",
            "+",
            "Lcom/yandex/metrica/impl/ob/bf;",
            ">;)",
            "Lcom/yandex/metrica/profile/UserProfile$Builder;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/yandex/metrica/profile/UserProfile$Builder;->a:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build()Lcom/yandex/metrica/profile/UserProfile;
    .locals 3

    .line 1
    new-instance v0, Lcom/yandex/metrica/profile/UserProfile;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/yandex/metrica/profile/UserProfile$Builder;->a:Ljava/util/LinkedList;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/yandex/metrica/profile/UserProfile;-><init>(Ljava/util/List;Lcom/yandex/metrica/profile/UserProfile$a;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method
