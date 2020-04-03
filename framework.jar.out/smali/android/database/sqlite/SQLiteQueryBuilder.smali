.class public Landroid/database/sqlite/SQLiteQueryBuilder;
.super Ljava/lang/Object;
.source "SQLiteQueryBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl0;,
        Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl1;,
        Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl2;,
        Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl3;,
        Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl4;
    }
.end annotation


# static fields
.field private static final STRICT_COLUMNS:I = 0x2

.field private static final STRICT_GRAMMAR:I = 0x4

.field private static final STRICT_PARENTHESES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SQLiteQueryBuilder"

.field private static final sAggregationPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mDistinct:Z

.field private mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mProjectionGreylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStrictFlags:I

.field private mTables:Ljava/lang/String;

.field private mWhereClause:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "(?i)(AVG|COUNT|MAX|MIN|SUM|TOTAL|GROUP_CONCAT)\\((.+)\\)"

    .line 56
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteQueryBuilder;->sAggregationPattern:Ljava/util/regex/Pattern;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    .line 59
    iput-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionGreylist:Ljava/util/List;

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    .line 74
    iput-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 72
    return-void
.end method

.method private static appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clause"    # Ljava/lang/String;

    .prologue
    .line 361
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_0
    return-void
.end method

.method public static appendColumns(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 4
    .param p0, "s"    # Ljava/lang/StringBuilder;
    .param p1, "columns"    # [Ljava/lang/String;

    .prologue
    .line 372
    array-length v2, p1

    .line 374
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 375
    aget-object v0, p1, v1

    .line 377
    .local v0, "column":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 378
    if-lez v1, :cond_0

    .line 379
    const-string/jumbo v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "column":Ljava/lang/String;
    :cond_2
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    return-void
.end method

.method public static buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "distinct"    # Z
    .param p1, "tables"    # Ljava/lang/String;
    .param p2, "columns"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "orderBy"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;

    .prologue
    .line 333
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 340
    .local v0, "query":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    if-eqz p0, :cond_1

    .line 342
    const-string/jumbo v1, "DISTINCT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    :cond_1
    if-eqz p2, :cond_3

    array-length v1, p2

    if-eqz v1, :cond_3

    .line 345
    invoke-static {v0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendColumns(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 349
    :goto_0
    const-string/jumbo v1, "FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string/jumbo v1, " WHERE "

    invoke-static {v0, v1, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string/jumbo v1, " GROUP BY "

    invoke-static {v0, v1, p4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string/jumbo v1, " HAVING "

    invoke-static {v0, v1, p5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v1, " ORDER BY "

    invoke-static {v0, v1, p6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string/jumbo v1, " LIMIT "

    invoke-static {v0, v1, p7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 334
    .end local v0    # "query":Ljava/lang/StringBuilder;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 335
    const-string/jumbo v2, "HAVING clauses are only permitted when using a groupBy clause"

    .line 334
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 347
    .restart local v0    # "query":Ljava/lang/StringBuilder;
    :cond_3
    const-string/jumbo v1, "* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private computeSingleProjection(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "userColumn"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1030
    iget-object v6, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    if-nez v6, :cond_0

    .line 1031
    return-object p1

    .line 1034
    :cond_0
    const/4 v3, 0x0

    .line 1035
    .local v3, "operator":Ljava/lang/String;
    iget-object v6, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1038
    .local v0, "column":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1039
    sget-object v6, Landroid/database/sqlite/SQLiteQueryBuilder;->sAggregationPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1040
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1041
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 1042
    .local v3, "operator":Ljava/lang/String;
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 1043
    iget-object v6, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "column":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1047
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "operator":Ljava/lang/String;
    .restart local v0    # "column":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 1048
    invoke-static {v3, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->maybeWithOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1051
    :cond_2
    iget v6, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    if-nez v6, :cond_4

    .line 1052
    const-string/jumbo v6, " AS "

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, " as "

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 1051
    if-eqz v6, :cond_4

    .line 1054
    :cond_3
    invoke-static {v3, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->maybeWithOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1059
    :cond_4
    iget-object v6, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionGreylist:Ljava/util/List;

    if-eqz v6, :cond_7

    .line 1060
    const/4 v1, 0x0

    .line 1061
    .local v1, "match":Z
    iget-object v6, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionGreylist:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "p$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/regex/Pattern;

    .line 1062
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1063
    const/4 v1, 0x1

    .line 1068
    .end local v4    # "p":Ljava/util/regex/Pattern;
    :cond_6
    if-eqz v1, :cond_7

    .line 1069
    const-string/jumbo v6, "SQLiteQueryBuilder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Allowing abusive custom column: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-static {v3, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->maybeWithOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 1074
    .end local v1    # "match":Z
    .end local v5    # "p$iterator":Ljava/util/Iterator;
    :cond_7
    return-object v7
.end method

.method private computeSingleProjectionOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "userColumn"    # Ljava/lang/String;

    .prologue
    .line 1020
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeSingleProjection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1021
    .local v0, "column":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1022
    return-object v0

    .line 1024
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enforceStrictColumns(Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 700
    iget-object v3, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    const-string/jumbo v4, "No projection map defined"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 702
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 703
    .local v1, "rawValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 704
    .local v2, "rawValuesIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 705
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 706
    .local v0, "column":Ljava/lang/String;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 707
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid column "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 699
    .end local v0    # "column":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private enforceStrictColumns([Ljava/lang/String;)V
    .locals 2
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 694
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    const-string/jumbo v1, "No projection map defined"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 696
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeProjection([Ljava/lang/String;)[Ljava/lang/String;

    .line 693
    return-void
.end method

.method private enforceStrictGrammar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "selection"    # Ljava/lang/String;
    .param p2, "groupBy"    # Ljava/lang/String;
    .param p3, "having"    # Ljava/lang/String;
    .param p4, "sortOrder"    # Ljava/lang/String;
    .param p5, "limit"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 715
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl0;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl0;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 714
    invoke-static {p1, v1, v0}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 717
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl1;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl1;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 716
    invoke-static {p2, v1, v0}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 719
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl2;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl2;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 718
    invoke-static {p3, v1, v0}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 721
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl3;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl3;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 720
    invoke-static {p4, v1, v0}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 723
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl4;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder$-void_enforceStrictGrammar_java_lang_String_selection_java_lang_String_groupBy_java_lang_String_having_java_lang_String_sortOrder_java_lang_String_limit_LambdaImpl4;-><init>(Landroid/database/sqlite/SQLiteQueryBuilder;)V

    .line 722
    invoke-static {p5, v1, v0}, Landroid/database/sqlite/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 713
    return-void
.end method

.method private enforceStrictGrammarGroupBy(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 747
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->isTableOrColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 748
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceStrictGrammarLimit(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 762
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OFFSET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 764
    return-void

    .line 766
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceStrictGrammarOrderBy(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 752
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->isTableOrColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 753
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "COLLATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 756
    :cond_1
    return-void

    .line 753
    :cond_2
    const-string/jumbo v1, "ASC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "DESC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "BINARY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "RTRIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "NOCASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 758
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private enforceStrictGrammarWhereHaving(Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 727
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->isTableOrColumn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 728
    :cond_0
    invoke-static {p1}, Landroid/database/sqlite/SQLiteTokenizer;->isFunction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 729
    :cond_1
    invoke-static {p1}, Landroid/database/sqlite/SQLiteTokenizer;->isType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 733
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "AND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 741
    :cond_3
    return-void

    .line 733
    :cond_4
    const-string/jumbo v1, "AS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "BETWEEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "BINARY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "CASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "CAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "COLLATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "DISTINCT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "ELSE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "END"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "ESCAPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "EXISTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "GLOB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "IS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "ISNULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "LIKE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "MATCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "NOCASE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "NOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "NOTNULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "NULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "OR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "REGEXP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "RTRIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "THEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "WHEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 743
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isTableOrColumn(Ljava/lang/String;)Z
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 1078
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 1079
    :cond_0
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeSingleProjection(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static maybeWithOperator(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "operator"    # Ljava/lang/String;
    .param p1, "column"    # Ljava/lang/String;

    .prologue
    .line 983
    if-eqz p0, :cond_0

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 986
    :cond_0
    return-object p1
.end method

.method private wrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 1109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    return-object p1

    .line 1112
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method synthetic -android_database_sqlite_SQLiteQueryBuilder-mthref-0(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 715
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictGrammarWhereHaving(Ljava/lang/String;)V

    return-void
.end method

.method synthetic -android_database_sqlite_SQLiteQueryBuilder-mthref-1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 717
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictGrammarGroupBy(Ljava/lang/String;)V

    return-void
.end method

.method synthetic -android_database_sqlite_SQLiteQueryBuilder-mthref-2(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 719
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictGrammarWhereHaving(Ljava/lang/String;)V

    return-void
.end method

.method synthetic -android_database_sqlite_SQLiteQueryBuilder-mthref-3(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 721
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictGrammarOrderBy(Ljava/lang/String;)V

    return-void
.end method

.method synthetic -android_database_sqlite_SQLiteQueryBuilder-mthref-4(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 723
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictGrammarLimit(Ljava/lang/String;)V

    return-void
.end method

.method public appendWhere(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "inWhere"    # Ljava/lang/CharSequence;

    .prologue
    .line 117
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 120
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 116
    return-void
.end method

.method public appendWhereEscapeString(Ljava/lang/String;)V
    .locals 2
    .param p1, "inWhere"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 137
    :cond_0
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public buildDelete(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 849
    .local v0, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "DELETE FROM "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    iget-object v2, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    invoke-static {v2}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, "where":Ljava/lang/String;
    const-string/jumbo v2, " WHERE "

    invoke-static {v0, v2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "projectionIn"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "groupBy"    # Ljava/lang/String;
    .param p4, "having"    # Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "limit"    # Ljava/lang/String;

    .prologue
    .line 800
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 801
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 804
    .local v3, "where":Ljava/lang/String;
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 803
    invoke-static/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "projectionIn"    # [Ljava/lang/String;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "having"    # Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "limit"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 818
    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subQueries"    # [Ljava/lang/String;
    .param p2, "sortOrder"    # Ljava/lang/String;
    .param p3, "limit"    # Ljava/lang/String;

    .prologue
    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 967
    .local v1, "query":Ljava/lang/StringBuilder;
    array-length v2, p1

    .line 968
    .local v2, "subQueryCount":I
    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    if-eqz v4, :cond_1

    const-string/jumbo v3, " UNION "

    .line 970
    .local v3, "unionOperator":Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 971
    if-lez v0, :cond_0

    .line 972
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    :cond_0
    aget-object v4, p1, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 970
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 968
    .end local v0    # "i":I
    .end local v3    # "unionOperator":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, " UNION ALL "

    .restart local v3    # "unionOperator":Ljava/lang/String;
    goto :goto_0

    .line 976
    .restart local v0    # "i":I
    :cond_2
    const-string/jumbo v4, " ORDER BY "

    invoke-static {v1, v4, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string/jumbo v4, " LIMIT "

    invoke-static {v1, v4, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "typeDiscriminatorColumn"    # Ljava/lang/String;
    .param p2, "unionColumns"    # [Ljava/lang/String;
    .param p4, "computedColumnsOffset"    # I
    .param p5, "typeDiscriminatorValue"    # Ljava/lang/String;
    .param p6, "selection"    # Ljava/lang/String;
    .param p7, "groupBy"    # Ljava/lang/String;
    .param p8, "having"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 905
    .local p3, "columnsPresentInTable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v9, p2

    .line 906
    .local v9, "unionColumnsCount":I
    new-array v1, v9, [Ljava/lang/String;

    .line 908
    .local v1, "projectionIn":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_3

    .line 909
    aget-object v8, p2, v7

    .line 911
    .local v8, "unionColumn":Ljava/lang/String;
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\' AS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    .line 908
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 914
    :cond_0
    if-le v7, p4, :cond_1

    .line 915
    invoke-interface {p3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 914
    if-eqz v0, :cond_2

    .line 916
    :cond_1
    aput-object v8, v1, v7

    goto :goto_1

    .line 918
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NULL AS "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    goto :goto_1

    .line 923
    .end local v8    # "unionColumn":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    .line 924
    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    .line 921
    invoke-virtual/range {v0 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "typeDiscriminatorColumn"    # Ljava/lang/String;
    .param p2, "unionColumns"    # [Ljava/lang/String;
    .param p4, "computedColumnsOffset"    # I
    .param p5, "typeDiscriminatorValue"    # Ljava/lang/String;
    .param p6, "selection"    # Ljava/lang/String;
    .param p7, "selectionArgs"    # [Ljava/lang/String;
    .param p8, "groupBy"    # Ljava/lang/String;
    .param p9, "having"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p3, "columnsPresentInTable":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 945
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public buildUpdate(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    .line 823
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 824
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Empty values"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 827
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x78

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 828
    .local v2, "sql":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "UPDATE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    iget-object v4, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    invoke-static {v4}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    const-string/jumbo v4, " SET "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 833
    .local v1, "rawKeys":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_3

    .line 834
    if-lez v0, :cond_2

    .line 835
    const/16 v4, 0x2c

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 837
    :cond_2
    aget-object v4, v1, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    const-string/jumbo v4, "=?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 841
    :cond_3
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeWhere(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 842
    .local v3, "where":Ljava/lang/String;
    const-string/jumbo v4, " WHERE "

    invoke-static {v2, v4, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public computeProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p1, "projectionIn"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 992
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 993
    array-length v7, p1

    new-array v6, v7, [Ljava/lang/String;

    .line 994
    .local v6, "projectionOut":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, p1

    if-ge v3, v7, :cond_0

    .line 995
    aget-object v7, p1, v3

    invoke-direct {p0, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->computeSingleProjectionOrThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 994
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 997
    :cond_0
    return-object v6

    .line 998
    .end local v3    # "i":I
    .end local v6    # "projectionOut":[Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    if-eqz v7, :cond_4

    .line 1000
    iget-object v7, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1001
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    .line 1002
    .local v5, "projection":[Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1003
    .local v1, "entryIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 1005
    .restart local v3    # "i":I
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1006
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1009
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v8, "_count"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1012
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v3

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 1014
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    return-object v5

    .line 1016
    .end local v1    # "entryIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2    # "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "i":I
    .end local v5    # "projection":[Ljava/lang/String;
    :cond_4
    return-object v8
.end method

.method public computeWhere(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "selection"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x29

    const/16 v5, 0x28

    .line 1084
    iget-object v3, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    .line 1085
    .local v1, "hasInternal":Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x0

    .line 1087
    .local v0, "hasExternal":Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_6

    .line 1088
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1089
    .local v2, "where":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_1

    .line 1090
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1092
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 1093
    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    :cond_2
    if-eqz v0, :cond_3

    .line 1096
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1098
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1084
    .end local v0    # "hasExternal":Z
    .end local v1    # "hasInternal":Z
    .end local v2    # "where":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v1, 0x1

    .restart local v1    # "hasInternal":Z
    goto :goto_0

    .line 1085
    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "hasExternal":Z
    goto :goto_1

    .line 1100
    :cond_6
    const/4 v3, 0x0

    return-object v3
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 649
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    const-string/jumbo v1, "No tables defined"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 650
    const-string/jumbo v0, "No database defined"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 653
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildDelete(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 655
    .local v8, "unwrappedSql":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictGrammar()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 656
    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictGrammar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 672
    invoke-virtual {p1, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->validateSql(Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 675
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildDelete(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 676
    .local v9, "wrappedSql":Ljava/lang/String;
    move-object v6, v9

    .line 682
    .end local v9    # "wrappedSql":Ljava/lang/String;
    .local v6, "sql":Ljava/lang/String;
    :goto_0
    move-object v7, p3

    .line 683
    .local v7, "sqlArgs":[Ljava/lang/String;
    const-string/jumbo v0, "SQLiteQueryBuilder"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_3

    .line 685
    const-string/jumbo v0, "SQLiteQueryBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with args "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_1
    :goto_1
    invoke-virtual {p1, v6, p3}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 679
    .end local v6    # "sql":Ljava/lang/String;
    .end local v7    # "sqlArgs":[Ljava/lang/String;
    :cond_2
    move-object v6, v8

    .restart local v6    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 687
    .restart local v7    # "sqlArgs":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "SQLiteQueryBuilder"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getProjectionGreylist()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionGreylist:Ljava/util/List;

    return-object v0
.end method

.method public getProjectionMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    return-object v0
.end method

.method public getTables()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    return-object v0
.end method

.method public isStrict()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 233
    iget v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isStrictColumns()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 261
    iget v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isStrictGrammar()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 301
    iget v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 421
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 420
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;

    .prologue
    .line 460
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 459
    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "projectionIn"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "groupBy"    # Ljava/lang/String;
    .param p6, "having"    # Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .param p8, "limit"    # Ljava/lang/String;
    .param p9, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 501
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 502
    const/4 v1, 0x0

    return-object v1

    :cond_0
    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 506
    invoke-virtual/range {v1 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 510
    .local v9, "unwrappedSql":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictColumns()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictColumns([Ljava/lang/String;)V

    .line 513
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictGrammar()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p0

    move-object v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    .line 514
    invoke-direct/range {v1 .. v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictGrammar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_2
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrict()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 530
    move-object/from16 v0, p9

    invoke-virtual {p1, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->validateSql(Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 533
    invoke-direct {p0, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 534
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v4, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 533
    invoke-virtual/range {v1 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 535
    .local v10, "wrappedSql":Ljava/lang/String;
    move-object v3, v10

    .line 541
    .end local v10    # "wrappedSql":Ljava/lang/String;
    .local v3, "sql":Ljava/lang/String;
    :goto_0
    move-object v8, p4

    .line 542
    .local v8, "sqlArgs":[Ljava/lang/String;
    const-string/jumbo v1, "SQLiteQueryBuilder"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 543
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_5

    .line 544
    const-string/jumbo v1, "SQLiteQueryBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " with args "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 551
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v4, p4

    move-object/from16 v6, p9

    .line 549
    invoke-virtual/range {v1 .. v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 538
    .end local v3    # "sql":Ljava/lang/String;
    .end local v8    # "sqlArgs":[Ljava/lang/String;
    :cond_4
    move-object v3, v9

    .restart local v3    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 546
    .restart local v8    # "sqlArgs":[Ljava/lang/String;
    :cond_5
    const-string/jumbo v1, "SQLiteQueryBuilder"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setCursorFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 0
    .param p1, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 194
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 193
    return-void
.end method

.method public setDistinct(Z)V
    .locals 0
    .param p1, "distinct"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    .line 82
    return-void
.end method

.method public setProjectionGreylist(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "projectionGreylist":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionGreylist:Ljava/util/List;

    .line 172
    return-void
.end method

.method public setProjectionMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, "columnMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    .line 151
    return-void
.end method

.method public setStrict(Z)V
    .locals 1
    .param p1, "strict"    # Z

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    .line 218
    :goto_0
    return-void

    .line 222
    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    goto :goto_0
.end method

.method public setStrictColumns(Z)V
    .locals 1
    .param p1, "strictColumns"    # Z

    .prologue
    .line 247
    if-eqz p1, :cond_0

    .line 248
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    .line 246
    :goto_0
    return-void

    .line 250
    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    goto :goto_0
.end method

.method public setStrictGrammar(Z)V
    .locals 1
    .param p1, "strictGrammar"    # Z

    .prologue
    .line 287
    if-eqz p1, :cond_0

    .line 288
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    .line 286
    :goto_0
    return-void

    .line 290
    :cond_0
    iget v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mStrictFlags:I

    goto :goto_0
.end method

.method public setTables(Ljava/lang/String;)V
    .locals 0
    .param p1, "inTables"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 15
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 572
    iget-object v2, p0, Landroid/database/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    const-string/jumbo v3, "No tables defined"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 573
    const-string/jumbo v2, "No database defined"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 574
    const-string/jumbo v2, "No values defined"

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 577
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUpdate(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 579
    .local v12, "unwrappedSql":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictColumns()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictColumns(Landroid/content/ContentValues;)V

    .line 582
    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrictGrammar()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v3, p3

    invoke-direct/range {v2 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->enforceStrictGrammar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :cond_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->isStrict()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 599
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2}, Landroid/database/sqlite/SQLiteDatabase;->validateSql(Ljava/lang/String;Landroid/os/CancellationSignal;)V

    .line 602
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildUpdate(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 603
    .local v14, "wrappedSql":Ljava/lang/String;
    move-object v10, v14

    .line 609
    .end local v14    # "wrappedSql":Ljava/lang/String;
    .local v10, "sql":Ljava/lang/String;
    :goto_0
    if-nez p4, :cond_2

    .line 610
    sget-object p4, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 612
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 613
    .local v9, "rawKeys":[Ljava/lang/String;
    array-length v13, v9

    .line 614
    .local v13, "valuesLength":I
    move-object/from16 v0, p4

    array-length v2, v0

    add-int/2addr v2, v13

    new-array v11, v2, [Ljava/lang/Object;

    .line 615
    .local v11, "sqlArgs":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v2, v11

    if-ge v8, v2, :cond_5

    .line 616
    if-ge v8, v13, :cond_4

    .line 617
    aget-object v2, v9, v8

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v11, v8

    .line 615
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 606
    .end local v8    # "i":I
    .end local v9    # "rawKeys":[Ljava/lang/String;
    .end local v10    # "sql":Ljava/lang/String;
    .end local v11    # "sqlArgs":[Ljava/lang/Object;
    .end local v13    # "valuesLength":I
    :cond_3
    move-object v10, v12

    .restart local v10    # "sql":Ljava/lang/String;
    goto :goto_0

    .line 619
    .restart local v8    # "i":I
    .restart local v9    # "rawKeys":[Ljava/lang/String;
    .restart local v11    # "sqlArgs":[Ljava/lang/Object;
    .restart local v13    # "valuesLength":I
    :cond_4
    sub-int v2, v8, v13

    aget-object v2, p4, v2

    aput-object v2, v11, v8

    goto :goto_2

    .line 622
    :cond_5
    const-string/jumbo v2, "SQLiteQueryBuilder"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 623
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_7

    .line 624
    const-string/jumbo v2, "SQLiteQueryBuilder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with args "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_6
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v2

    return v2

    .line 626
    :cond_7
    const-string/jumbo v2, "SQLiteQueryBuilder"

    invoke-static {v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
