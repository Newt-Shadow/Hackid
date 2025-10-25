.class Lf7/i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf7/i$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf7/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lf7/j;


# direct methods
.method private constructor <init>(Lf7/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lf7/i$c;->a:Lf7/j;

    return-void
.end method

.method synthetic constructor <init>(Lf7/j;Lf7/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf7/i$c;-><init>(Lf7/j;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lf7/i$c;->a:Lf7/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, p1, v1}, Lf7/j;->a(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method
