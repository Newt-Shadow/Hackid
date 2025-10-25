.class public final Lt6/t;
.super Lt6/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt6/t$b;
    }
.end annotation


# instance fields
.field private final a:Lt6/v;

.field private final b:Lg7/b;

.field private final c:Lg7/a;

.field private final d:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lt6/v;Lg7/b;Lg7/a;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lt6/b;-><init>()V

    .line 3
    iput-object p1, p0, Lt6/t;->a:Lt6/v;

    .line 4
    iput-object p2, p0, Lt6/t;->b:Lg7/b;

    .line 5
    iput-object p3, p0, Lt6/t;->c:Lg7/a;

    .line 6
    iput-object p4, p0, Lt6/t;->d:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lt6/v;Lg7/b;Lg7/a;Ljava/lang/Integer;Lt6/t$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lt6/t;-><init>(Lt6/v;Lg7/b;Lg7/a;Ljava/lang/Integer;)V

    return-void
.end method

.method public static a()Lt6/t$b;
    .locals 2

    .line 1
    new-instance v0, Lt6/t$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lt6/t$b;-><init>(Lt6/t$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
