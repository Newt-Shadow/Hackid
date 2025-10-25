.class public final Lt6/g;
.super Lt6/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt6/g$b;
    }
.end annotation


# instance fields
.field private final a:Lt6/i;

.field private final b:Lg7/b;

.field private final c:Lg7/a;

.field private final d:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Lt6/i;Lg7/b;Lg7/a;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lt6/b;-><init>()V

    .line 3
    iput-object p1, p0, Lt6/g;->a:Lt6/i;

    .line 4
    iput-object p2, p0, Lt6/g;->b:Lg7/b;

    .line 5
    iput-object p3, p0, Lt6/g;->c:Lg7/a;

    .line 6
    iput-object p4, p0, Lt6/g;->d:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lt6/i;Lg7/b;Lg7/a;Ljava/lang/Integer;Lt6/g$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lt6/g;-><init>(Lt6/i;Lg7/b;Lg7/a;Ljava/lang/Integer;)V

    return-void
.end method

.method public static a()Lt6/g$b;
    .locals 2

    .line 1
    new-instance v0, Lt6/g$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lt6/g$b;-><init>(Lt6/g$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
