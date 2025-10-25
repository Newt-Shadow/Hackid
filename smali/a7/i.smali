.class public final La7/i;
.super La7/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La7/i$b;
    }
.end annotation


# instance fields
.field private final a:La7/l;

.field private final b:Lg7/b;

.field private final c:Lg7/a;

.field private final d:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(La7/l;Lg7/b;Lg7/a;Ljava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, La7/p;-><init>()V

    .line 3
    iput-object p1, p0, La7/i;->a:La7/l;

    .line 4
    iput-object p2, p0, La7/i;->b:Lg7/b;

    .line 5
    iput-object p3, p0, La7/i;->c:Lg7/a;

    .line 6
    iput-object p4, p0, La7/i;->d:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(La7/l;Lg7/b;Lg7/a;Ljava/lang/Integer;La7/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, La7/i;-><init>(La7/l;Lg7/b;Lg7/a;Ljava/lang/Integer;)V

    return-void
.end method

.method public static c()La7/i$b;
    .locals 2

    .line 1
    new-instance v0, La7/i$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, La7/i$b;-><init>(La7/i$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public a()Lg7/a;
    .locals 1

    .line 1
    iget-object v0, p0, La7/i;->c:Lg7/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic b()La7/q;
    .locals 1

    .line 1
    invoke-virtual {p0}, La7/i;->d()La7/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d()La7/l;
    .locals 1

    .line 1
    iget-object v0, p0, La7/i;->a:La7/l;

    .line 2
    .line 3
    return-object v0
.end method
