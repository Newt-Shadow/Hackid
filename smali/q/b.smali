.class public final Lq/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Intent;

.field private final b:Ljava/util/List;


# direct methods
.method constructor <init>(Landroid/content/Intent;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq/b;->a:Landroid/content/Intent;

    .line 5
    .line 6
    iput-object p2, p0, Lq/b;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lq/b;->a:Landroid/content/Intent;

    .line 2
    .line 3
    return-object v0
.end method
