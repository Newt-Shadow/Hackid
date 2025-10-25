.class public final Lq1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lq1/c;

.field private static final b:Lq1/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lq1/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lq1/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lq1/c;->a:Lq1/c;

    .line 7
    .line 8
    sget-object v0, Lq1/j;->c:Lq1/j;

    .line 9
    .line 10
    sput-object v0, Lq1/c;->b:Lq1/j;

    .line 11
    .line 12
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lq1/j;
    .locals 1

    .line 1
    sget-object v0, Lq1/c;->b:Lq1/j;

    .line 2
    .line 3
    return-object v0
.end method
