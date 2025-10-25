.class public interface abstract Lf3/v$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf3/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Lf3/v$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lf3/w;

    .line 2
    .line 3
    invoke-direct {v0}, Lf3/w;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lf3/v$b;->a:Lf3/v$b;

    .line 7
    .line 8
    return-void
.end method

.method private static synthetic a()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lf3/v$b;->a()V

    return-void
.end method


# virtual methods
.method public abstract release()V
.end method
