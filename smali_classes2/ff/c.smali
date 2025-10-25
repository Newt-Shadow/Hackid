.class public interface abstract Lff/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lff/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lff/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lff/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lff/c;->a:Lff/c;

    .line 7
    .line 8
    return-void
.end method

.method public static a()Lff/c;
    .locals 1

    .line 1
    sget-object v0, Lff/c;->a:Lff/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lff/c;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private static synthetic c(Ljava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public abstract accept(Ljava/lang/Object;)V
.end method
