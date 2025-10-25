.class Lxb/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxb/b;->c(Lcom/android/billingclient/api/h;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lxb/b;


# direct methods
.method constructor <init>(Lxb/b;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lxb/b$b;->c:Lxb/b;

    .line 2
    .line 3
    iput-object p2, p0, Lxb/b$b;->a:Ljava/util/Map;

    .line 4
    .line 5
    iput-object p3, p0, Lxb/b$b;->b:Ljava/util/Map;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lxb/b$b;->c:Lxb/b;

    .line 2
    .line 3
    iget-object v1, p0, Lxb/b$b;->a:Ljava/util/Map;

    .line 4
    .line 5
    iget-object v2, p0, Lxb/b$b;->b:Ljava/util/Map;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lxb/b;->d(Ljava/util/Map;Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method
