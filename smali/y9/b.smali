.class public final Ly9/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lj9/b;

.field private final b:Ljava/util/List;

.field private final c:I


# direct methods
.method public constructor <init>(Lj9/b;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly9/b;->a:Lj9/b;

    .line 5
    .line 6
    iput-object p2, p0, Ly9/b;->b:Ljava/util/List;

    .line 7
    .line 8
    iput p3, p0, Ly9/b;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Lj9/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/b;->a:Lj9/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Ly9/b;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Ly9/b;->c:I

    .line 2
    .line 3
    return v0
.end method
