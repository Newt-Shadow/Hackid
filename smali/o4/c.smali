.class final Lo4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm4/h;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lo4/c;->a:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 0

    .line 1
    const/4 p1, -0x1

    return p1
.end method

.method public b(I)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public f(J)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p1, p0, Lo4/c;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p1
.end method

.method public i()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
